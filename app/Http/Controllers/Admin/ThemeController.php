<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;

class ThemeController extends Controller
{
    /**
     * Notes:主题列表
     * User: iatw
     * Date: 2018/4/2
     * Time: 14:09
     * Function Name: index
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $theme_name = array_diff(scandir(public_path("themes")), [".", ".."]);
        foreach ($theme_name as $item) {
            $array[] = \Theme::theme($item)->info();
        }
        return view("admin.theme.index", compact('array'));
    }

    public function set_theme($theme)
    {
        return Prompt(set_Env(["APP_THEME" => $theme]), "主题修改", "Admin/themes/");
    }
}
