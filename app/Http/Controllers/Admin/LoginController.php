<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class LoginController extends Controller
{
    /**
     * Notes: 首页视图
     * User: iatw
     * Date: 2018/4/1
     * Time: 13:57
     * Function Name: index
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        return view("admin.login.login");
    }

    /**
     * Notes:登录
     * User: iatw
     * Date: 2018/4/1
     * Time: 13:56
     * Function Name: login
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function login(Request $request)
    {
        $input = $request->except(['_token']);
//        dump(\Auth::attempt($input));
        if (\Auth::attempt($input)) {
            // 认证通过...
            return redirect("/Admin/");
        }else{
            $this->index();
        }
    }

    /**
     * Notes:注销登录
     * User: iatw
     * Date: 2018/4/1
     * Time: 13:59
     * Function Name: logout
     */
    public function logout()
    {
        \Auth::logout();
        return $this->index();
    }
}
