<?php

namespace App\Http\Controllers\Admin;

use App\Model\Setup;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class SetupController extends Controller
{
    public function Basicsetup(Request $request)
    {
        if ($request->isMethod('post')) {
            $input = $request->except(['_token']);

            set_Env($input);

            return redirect("/Admin/Setup/Basicsetup")->with([
                    'message' => "数据修改成功！！",
                    'icon' => '6'
                ]
            );
        } else {
            return view('admin.setup.index');
        }
    }

    public function user(Request $request)
    {
        if ($request->isMethod('post')) {
            $input = $request->except(['_token','password']);
//            $user=User::where("id",\Auth::id())->update($request->post());
            $request->user()->fill([
                'password' => \Hash::make($request->password)
            ])->save();

            $user=User::where("id",\Auth::id())->update($input);

            if ($user){
                return redirect("/Admin/Setup/user")->with([
                        'message' => "数据修改成功！！",
                        'icon' => '6'
                    ]
                );
            }else{
                return redirect("/Admin/Setup/user")->with([
                        'message' => "数据修改失败！！",
                        'icon' => '5'
                    ]
                );
            }


        } else {
            $user=User::find(\Auth::id());
            return view('admin.setup.user',compact('user'));
        }
    }
}
