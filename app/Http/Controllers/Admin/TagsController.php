<?php

namespace App\Http\Controllers\Admin;

use App\Model\Content_tag;
use App\Model\Tag;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class TagsController extends Controller
{
    /**
     * 标签列表
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tags = Tag::paginate('10');
        return view('admin.tags.index',compact('tags'));
    }

    /**
     * 添加标签
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //根据标签名称查询 存在就返回并给提示，不存在就执行添加
        $data = Tag::where("name","=",$request->name)->get();
        if($data->count()){
            return redirect("Admin/tags")->with(["message" => "该标签已经存在","icon" => 5]);
        }
        $tag = Tag::create(["name" => $request->name,"hot" => 0]);
        return Prompt($tag,"添加标签","Admin/tags");
    }

    /**
     * 根据id查询单条数据
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $tag = Tag::find($id);
        return response()->json([ 'success' => true, 'data'=>$tag]);
    }

    /**
     * 修改标签
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request)
    {
        //dd($request->all());
        //查询提交的标签名称是否存在
        $data = Tag::where("name","=",$request->name)->get();
        if($data->count()){
            return redirect("Admin/tags")->with(["message" => "该标签已经存在","icon" => 5]);
        }
        $tag = Tag::where("id","=",$request->id)->update(["name" => $request->name]);
        return Prompt($tag,"编辑标签","Admin/tags");

    }

    /**
     * 软删除标签
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $content_tag = Content_tag::where("tag_id","=",$id)->get();
        if($content_tag->count()){
            return redirect("Admin/tags")->with(["message" => "该标签下还有文章不能软删除！！！","icon" => 5]);
        }
        if(Tag::destroy($id)){
            return redirect("/Admin/tags")->with([
                    'message' => "已将该条标签放入回收站,你可以点击恢复来恢复此条数据",
                    'icon' => '6'
                ]
            );
        }else{
            return redirect("/Admin/tags")->with([
                    'message' => "该标签软删除失败！！！",
                    'icon' => '5'
                ]
            );
        }
    }

}
