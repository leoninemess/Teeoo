<?php

namespace App\Http\Controllers\Admin;

use App\Model\Comment;
use App\Model\Content;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CommentController extends Controller
{
    /**
     * Notes:列表页
     * User: iatw
     * Date: 2018/4/13
     * Time: 9:31
     * Function Name: index
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $comment = Comment::withTrashed()->with('comment_content')->get();
//        dump($comment);
        return view('admin.comment.index', compact('comment'));
    }

    /**
     * Notes:软删除
     * User: iatw
     * Date: 2018/4/13
     * Time: 9:31
     * Function Name: destroy
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        $delete = Comment::destroy($id);
        if ($delete) {
            //更新content的commentsNum
            $content = Comment::withTrashed()->find($id);
            Content::where("id", "=", $content->content_id)
                ->update([
                    "commentsNum" => Comment::where("content_id", "=", $content->content_id)->count()
                ]);
            return redirect("/Admin/comment")->with([
                    'message' => "已将该条评论放入回收站,你可以点击恢复来恢复此条数据",
                    'icon' => '6'
                ]
            );
        } else {
            return redirect("/Admin/comment")->with([
                    'message' => "数据删除失败,我也不知道啥原因！！",
                    'icon' => '5'
                ]
            );
        }
    }

    /**
     * Notes:恢复
     * User: iatw
     * Date: 2018/4/13
     * Time: 9:24
     * Function Name: restore
     * @param $id
     */
    public function restore($id)
    {
        $comm = Comment::withTrashed()->find($id);
        $restore = $comm->restore();
        if ($restore) {
            //更新content的commentsNum
            $content = Comment::find($id);
            Content::where("id", "=", $content->content_id)
                ->update([
                    "commentsNum" => Comment::where("content_id", "=", $content->content_id)->count()
                ]);
            return redirect("/Admin/comment")->with([
                    'message' => "已恢复该条评论",
                    'icon' => '6'
                ]
            );
        } else {
            return redirect("/Admin/comment")->with([
                    'message' => "恢复失败,我也不知道啥原因！！",
                    'icon' => '5'
                ]
            );
        }
    }

    /**
     * Notes:删除
     * User: iatw
     * Date: 2018/4/13
     * Time: 9:31
     * Function Name: delete
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function delete($id)
    {
        $Comment = Comment::where("id", "=", $id)->forceDelete();
        return Prompt($Comment, "数据删除", "/Admin/comment");
    }

    /**
     * Notes:编辑
     * User: iatw
     * Date: 2018/4/13
     * Time: 9:51
     * Function Name: edit
     * @param Request $request
     * @param $id
     */
    public function edit(Request $request, $id)
    {
        //post修改数据 get查询出数据
        if ($request->isMethod('post')) {

        } else {
            
        }
    }

    /**
     * Notes:回复
     * User: iatw
     * Date: 2018/4/13
     * Time: 9:34
     * Function Name: Reply
     */
    public function Reply()
    {
        
    }
}
