<?php

namespace App\Http\Controllers\Admin;

use App\Model\Content;
use App\Model\Metas;
use App\Model\Tag;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

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
        $contents = Content::with('metas')->with('user')->with('tags')->paginate(10);
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
            "cover" => "默认的封面",//如果文章没有图片那么直接随机产生一张封面
            //"summary" => str_limit($request->post('summary'), $limit = 100, $end = '...'),
            "user_id" => \Auth::user()->id,
            "types" => "1",
        ]));
        //验证下别名是否为空,不为空不管 为空更新别名
        $request->post('slug') ?? Content::where("id", "=", $content->id)->update(["slug" => $content->id]);
        //添加关联表信息
        $content->tags()->attach($ids);
        //更新分类下文章数量
        Metas::where("id","=",$request->post("metas_id"))
            ->update(
                [
                    "content_count"=>Content::where("metas_id","=",$request->post("metas_id"))
                        ->count()
                ]
            );
        return Prompt($content, "文章添加", "Admin/content");
    }
}
