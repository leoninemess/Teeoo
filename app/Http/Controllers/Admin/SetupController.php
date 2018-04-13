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

        $set = User::find(\Auth::id());
        $set=json_decode($set->Setup, true);
        return view('admin.setup.index', compact('set'));

    }

    public function Basicsetup_update(Request $request)
    {
        $input = $request->except(['_token']);

        $user = User::where("id", "=", \Auth::id())->update(['Setup' => json_encode($input)]);

        Prompt($user, "数据修改", 'Admin/Setup/Basicsetup');
    }
}
