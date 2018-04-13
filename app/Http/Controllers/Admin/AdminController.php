<?php

namespace App\Http\Controllers\Admin;

use App\Model\Comment;
use App\Model\Content;
use App\Model\Tag;
use Carbon\Carbon;
use Doctrine\DBAL\Driver\Mysqli\MysqliConnection;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AdminController extends Controller
{
    public function index()
    {
        return view("admin.index.index");
    }

    public function baic(Request $request)
    {
        $laravel = app();
        $dt = Carbon::now();
        //总评论数
        $comment_count = Comment::all()->count();
        //文章总数
        $content_count = Content::all()->count();
        //总标签数
        $tag_count=Tag::all()->count();
        $info = array(
            "软件版本"=>env("Edition"),
            "开发作者"=>"Teeoo",
            '操作系统'=>PHP_OS,
            '运行环境'=>$_SERVER["SERVER_SOFTWARE"],
            '主机名'=>$_SERVER['SERVER_NAME'],
            'WEB服务端口'=>$_SERVER['SERVER_PORT'],
            '网站文档目录'=>$_SERVER["DOCUMENT_ROOT"],
            '浏览器信息'=>substr($_SERVER['HTTP_USER_AGENT'], 0, 40),
            'laravel版本'=>$laravel::VERSION,
            '上传附件限制'=>ini_get('upload_max_filesize'),
            '执行时间限制'=>ini_get('max_execution_time').'秒',
            '服务器域名/IP'=>$_SERVER['SERVER_NAME'].' [ '.gethostbyname($_SERVER['SERVER_NAME']).' ]',
            '用户的IP地址'=>$_SERVER['REMOTE_ADDR'],
            '剩余空间'=>round((disk_free_space(".")/(1024*1024)),2).'M',
        );
        return view("admin.index.baic",compact('info'));
    }
}
