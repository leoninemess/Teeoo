<?php

namespace App\Http\Controllers\Home;

use App\Model\Comment;
use App\Model\Content;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Cookie;
use voku\helper\AntiXSS;

class IndexController extends Controller
{
    public function index()
    {
        $content = Content::with('metas')
            ->with('tags')
            ->with('user')
            ->get();

//        dump($content);
        $comments_desc = Comment::orderBy('created_at', 'desc')->get();
//        dump($comments_desc);
        $content_desc = Content::orderBy('created_at', 'desc')->get();
//        dump($content_desc);

        return \Theme::view('index', compact('content', 'comments_desc', 'content_desc'));
    }

    public function archives(Request $request, $slug)
    {
        $content = Content::where("slug", "=", $slug)
            ->with('metas')
            ->with('tags')
            ->with('user')
            ->with('comments')
            ->first();
        return \Theme::view("archives", compact('content'));
    }

    public function comment_create(Request $request, $post_id)
    {
        if (is_null(session('user_info'))) {
            $request->session()->put('user_info', [
                    'username' => $request->post('username'),
                    'email' => $request->post('email'),
                    'url' => $request->post('url'),
                ]
            );
        }
//        strip_tags($request->post('content'));
//        string_remove_xss($request->post('content'));
//        dump(strip_tags($request->post('content')));
        $input = $request->except(['_token', 'content']);
        $string = string_remove_xss($request->post('content')) == $request->post('content') ? $request->post('content') : string_remove_xss($request->post('content')) . '<img src="/themes/snow/assets/img/xss.jpg" alt="友情提示,这兄弟玩xss被我捉住了！！">';
        $collect = collect(
            [session('user_info') ?? $input,
                [
                    'content_id' => $post_id,
                    'parent_id' => 0,
                    'parent_name' => '0',
                    'content' => $string,
                ]
            ]);
        $collapsed = $collect->collapse();
        $comm=Comment::create($collapsed->toArray());
        if ($comm) {
            //更新评论条数
            Content::where("id", "=", $post_id)->update(["commentsNum" => Comment::where("content_id", "=", $post_id)->count()]);
            return redirect("archives/{$post_id}.html#comments-{$comm->id}");
        }
    }

    public function logout(Request $request, $id)
    {
        $request->session()->flush();
        return redirect("archives/{$id}.html#respond-post-1");
    }
}
