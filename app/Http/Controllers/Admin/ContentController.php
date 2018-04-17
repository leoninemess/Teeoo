<?php

namespace App\Http\Controllers\Admin;

use App\Model\Comment;
use App\Model\Content;
use App\Model\Metas;
use App\Model\Tag;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Input;

class ContentController extends Controller
{
    /**
     * Notes:文章首页
     * User: iatw
     * Date: 2018/4/2
     * Time: 14:27
     * Function Name: index
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        //根据主模型加载出确切关系
        $contents = Content::withTrashed()->with('metas')->with('user')->with('tags')->paginate(10);
        return view('admin.content.index', compact('contents'));
    }

    /**
     * Notes:添加页面
     * User: iatw
     * Date: 2018/4/2
     * Time: 14:41
     * Function Name: add
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function add()
    {
        //TODO:页面URL
        $metas = Metas::all();
        return view("admin.content.add", compact('metas'));
    }

    /**
     * Notes:添加文章
     * User: iatw
     * Date: 2018/4/2
     * Time: 14:41
     * Function Name: create
     * @param Request $request
     */
    public function create(Request $request)
    {
        //判断是否允许评论
        $criticism = array_key_exists("criticism", $request->post()) ? 1 : 2;
        //拆分tags
        $tags = explode(",", $request->post('tags'));
        //记录tags
        $ids = array();
        foreach ($tags as $v) {
            //不存在就添加 存在直接返回id
            $res = Tag::firstOrCreate(["name" => $v, "hot" => 0]);
            $ids[] = $res->id;
        }
        $input = $request->except(['_token', 'tags', 'criticism', 'my-editormd-markdown-doc', 'my-editormd-html-code']);
        $content = Content::create(array_merge($input, [
            "criticism" => $criticism,
            "html" => $request->post('my-editormd-html-code'),
            "text" => $request->post('my-editormd-markdown-doc'),//htmlentities()
//            "cover" => "默认的封面",//如果文章没有图片那么直接随机产生一张封面
            //"summary" => str_limit($request->post('summary'), $limit = 100, $end = '...'),
            "user_id" => \Auth::user()->id,
            "types" => "1",
        ]));
        //验证下别名是否为空,不为空不管 为空更新别名
        $request->post('slug') ?? Content::where("id", "=", $content->id)->update(["slug" => $content->id]);
        //添加关联表信息
        $content->tags()->attach($ids);
        //更新分类下文章数量
        Metas::where("id", "=", $request->post("metas_id"))
            ->update(
                [
                    "content_count" => Content::where("metas_id", "=", $request->post("metas_id"))
                        ->count()
                ]
            );
        return Prompt($content, "文章添加", "Admin/content");
    }

    public function edit(Request $request, $id)
    {
        if ($request->isMethod('post')) {
            //判断是否允许评论
            $criticism = array_key_exists("criticism", $request->post()) ? 1 : 2;
            //拆分tags
            $tags = explode(",", $request->post('tags'));
            //记录tags
            $ids = array();
            foreach ($tags as $v) {
                //不存在就添加 存在直接返回id
                $res = Tag::firstOrCreate(["name" => $v, "hot" => 0]);
                $ids[] = $res->id;
            }
            $input = $request->except(['_token', 'tags', 'criticism', 'my-editormd-markdown-doc', 'my-editormd-html-code']);
            $content = Content::where("id", "=", $id)->update(array_merge($input, [
                "criticism" => $criticism,
                "html" => $request->post('my-editormd-html-code'),
                "text" => $request->post('my-editormd-markdown-doc'),//htmlentities()
                "cover" => "默认的封面",//如果文章没有图片那么直接随机产生一张封面
                "user_id" => \Auth::user()->id,
                "types" => "1",
            ]));
            //验证下别名是否为空,不为空不管 为空更新别名
            $request->post('slug') ?? Content::where("id", "=", $content)->update(["slug" => $content]);

            //判断标签是否存在，存在就不用添加，反之就添加数据
            foreach ($ids as $ta) {
                if (!Tag::find($ta)) {
                    //添加关联表信息
                    Content::find($id)->tags()->attach($ta);
                }
            }

            return Prompt($content, "文章修改", "Admin/content");

        } else {
            //根据id查询当前这条数据
            $contents = Content::with('metas')->with('user')->with('tags')->find($id);
            //dump($contents);
            return view("admin.content.edit", compact('contents'));
        }
    }

    public function destroy($id)
    {
        //判断软删除文章是否成功
        if (Content::destroy($id)) {
            //查询该文章相关的评论
            $comms = Comment::where("content_id", '=', $id)->get();
            foreach ($comms as $com) {
                //并把评论表相关的数据软删除
                Comment::destroy($com->id);
                //更新content的commentsNum
                $content = Comment::withTrashed()->find($com->id);
                Content::withTrashed()->where("id", "=", $content->content_id)
                    ->update([
                        "commentsNum" => Comment::where("content_id", "=", $content->content_id)->count()
                    ]);
            }
            return redirect("/Admin/content")->with([
                    'message' => "已将该条文章放入回收站,你可以点击恢复来恢复此条数据",
                    'icon' => '6'
                ]
            );
        } else {
            return redirect("/Admin/content")->with([
                    'message' => "数据删除失败！！",
                    'icon' => '5'
                ]
            );
        }
    }

    public function restore($id)
    {
        $content = Content::withTrashed()->find($id);
        if ($content->restore()) {
            //查询该文章相关评论数据并恢复评论数据
            $comms = Comment::withTrashed()->where("content_id", '=', $id)->get()->toArray();
            foreach ($comms as $com) {
                $comid = Comment::withTrashed()->find($com['id']);
                $comid->restore();
                //更新content的commentsNum
                $content = Comment::find($com['id']);
                Content::where("id", "=", $content->content_id)
                    ->update([
                        "commentsNum" => Comment::where("content_id", "=", $content->content_id)->count()
                    ]);
            }
            return redirect("/Admin/content")->with([
                'message' => "已恢复该条文章",
                'icon' => '6'
            ]);
        } else {
            return redirect("/Admin/content")->with([
                'message' => "恢复失败！！",
                'icon' => '5'
            ]);
        }
    }

    public function delete($id)
    {
        $content = Content::where("id", "=", $id)->forceDelete();
        //同时把该文章的评论数据一起删除
        Comment::where("content_id", "=", $id)->forceDelete();
        return Prompt($content, "文章已彻底删除", "Admin/content");
    }

    public function uploadimage(Request $request)
    {
        $message = "";
        $file = $request->file('editormd-image-file');
        if ($file->isValid()) {
            $pathDir = date('Ymd');
            if (!\Storage::disk('public')->exists('/article/' . $pathDir)) {
                \Storage::disk('public')->makeDirectory('/article/' . $pathDir);
            }
            $originalName = $file->getClientOriginalName();
            $ext = $file->getClientOriginalExtension();
            $realPath = $file->getRealPath();
            $type = $file->getClientMimeType();
            $filename = date('Y-m-d-H-i-s') . '-' . uniqid() . '.' . $ext;
//              $bool = \Storage::disk('public')->put($filename, file_get_contents($realPath));
            $bool = $file->move("uploads/article/" . $pathDir, $filename);
//            if ($file->move($file->move("uploads/article/" . $pathDir, $filename))) {
//                $url = "/uploads/article/" . $pathDir . "/" . $filename;
//            } else {
//                $message = "1";
//            }
        }
        $data = array(
            'success' => 1,  //1：上传成功  0：上传失败
            'message' => $message,
            'url' => "/uploads/article/" . $pathDir . "/" . $filename
        );
        ob_end_flush();
        return json_encode($data);
    }

}
