<?php

namespace App\Http\Controllers\Admin;

use App\Model\Comment;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CommentController extends Controller
{
    public function index()
    {
        $comment=Comment::withTrashed()->with('comment_content')->get();
        return view('admin.comment.index',compact('comment'));
    }

    public function destroy($id)
    {
        $delete = Comment::destroy($id);
        if ($delete) {
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
}
