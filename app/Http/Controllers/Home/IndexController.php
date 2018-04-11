<?php

namespace App\Http\Controllers\Home;

use App\Model\Comment;
use App\Model\Content;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class IndexController extends Controller
{
    public function index()
    {
        $content = Content::with('metas')
            ->with('tags')
            ->with('user')
            ->get();
        return \Theme::view('index', compact('content'));
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
        dump(string_remove_xss($request->post('content')));
//        $input = $request->except(['_token']);
//        $collect = collect([$input, ['content_id' => $post_id, 'parent_id' => 0, 'parent_name' => '0']]);
//        $collapsed = $collect->collapse();
//        dump($collapsed);
//        if (Comment::create($collapsed->toArray())) {
//            return redirect("archives/{$post_id}.html");
//        }
    }
}
