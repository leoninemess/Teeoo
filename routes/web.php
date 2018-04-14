<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/', function () {
//    return array(
//        "开发三件套" => array(
//            "barryvdh/laravel-debugbar",
//            "barryvdh/laravel-ide-helper",
//            "mpociot/laravel-test-factory-helpe",
//        ),
//        "Theme" => "facuz/laravel-themes:^3.1",
//        "Tree" => "jiaxincui/closure-table",
//        "LogViewer" => "arcanedev/log-viewer",
//        "pjax" => "spatie/laravel-pjax",
//        "xss"=>"voku/anti-xss",
//    );
//});

Route::group(['middleware' => 'web', 'namespace' => 'Home'], function () {
    Route::get("/", "IndexController@index");
    //文章详情页
    Route::get("archives/{slug}.html", "IndexController@archives");
    //限制每个ip每分钟只能评论三次
    Route::post("comment/{post_id}", "IndexController@comment_create")->middleware(['middleware' => 'throttle:50,1']);
    //清除当前用户的session
    Route::get("logout/{id}", "IndexController@logout");
    //分类下的文章
    Route::get("logout/{id}", "IndexController@logout");
    //标签下的文章
    Route::get("logout/{id}", "IndexController@logout");
    //页面
    Route::group(['prefix' => 'page'], function () {

    });

});

//不需要验证的路由
Route::group(['prefix' => 'Admin', 'namespace' => 'Admin'], function () {
    Route::group(['prefix' => 'login'], function () {
        // 登录页面
        Route::get('/', 'LoginController@index');
        Route::get('index', 'LoginController@index');
        // 后台登录
        Route::post('login', 'LoginController@login');
        // 退出
        Route::get('logout', 'LoginController@logout');
    });
});


Route::group(["namespace" => "Admin", "prefix" => "Admin", "middleware" => "usercheck"], function () {
    //首页
    Route::get("/", "AdminController@index");
    Route::get("baic", "AdminController@baic");
    //分类
    Route::group(["prefix" => "metas"], function () {
        //分类列表页
        Route::get("/", "MetasController@index");
        //添加分类
        Route::post("store", "MetasController@store");
        //修改
        Route::get("edit/{id}", "MetasController@edit");
        Route::post("update/{id}", "MetasController@update");
        //软删除
        Route::get("destroy/{id}", "MetasController@destroy");
        //恢复软删除
        Route::get("restore/{id}", "MetasController@restore");
        //彻底删除
        Route::get("delete/{id}", "MetasController@delete");

    });
    //标签
    Route::group(["prefix" => "tags"],function (){
        //标签首页
        Route::get("/","TagsController@index");
        //添加标签
        Route::post("store","TagsController@store");
        //修改标签
        Route::get("show/{id}","TagsController@show");
        Route::post("edit","TagsController@edit");
        //软删除标签
        Route::get("destroy/{id}","TagsController@destroy");
        //恢复删除标签
        Route::get("restore/{id}","TagsController@restore");
        //彻底删除标签
        Route::get("delete/{id}","TagsController@delete");
    });
    //主题
    Route::group(["prefix" => "themes"], function () {
        //主题首页
        Route::get("/", "ThemeController@index");
        //主题列表
        Route::get("set_theme/{theme}", "ThemeController@set_theme");
    });
    //文章
    Route::group(["prefix" => "content"], function () {
        //文章列表页
        Route::get("/", "ContentController@index");
        //添加文章
        Route::get("add", "ContentController@add");
        Route::post("create", "ContentController@create");
        //修改文章
        Route::get("edit/{id}","ContentController@edit");
        Route::post("edit/{id}","ContentController@edit");
        //软删除文章
        Route::get("destroy/{id}","ContentController@destroy");
        //恢复软删除文章
        Route::get("restore/{id}", "ContentController@restore");
        //彻底删除文章
        Route::get("delete/{id}", "ContentController@delete");
    });
    //评论
    Route::group(["prefix" => "comment"], function () {
        //评论列表页
        Route::get("/", "CommentController@index");

        //软删除
        Route::get("destroy/{id}", "CommentController@destroy");
        //恢复软删除
        Route::get("restore/{id}", "CommentController@restore");
        //彻底删除
        Route::get("delete/{id}", "CommentController@delete");

    });
    //设置
    Route::group(["prefix" => "Setup"], function () {
        //基本设置
        Route::get('Basicsetup', 'SetupController@Basicsetup');
        Route::post('Basicsetup_update', 'SetupController@Basicsetup_update');
    });
});

Route::get('/em',function (){
    $user=\App\User::find(1);
   return new \App\Mail\email($user);
});
