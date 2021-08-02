<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    public function loginAdmin()
    {   
        if(Auth::check()){
            return redirect()->to('homes');
        }
        return view('login');
    }

    public function logout()
    {
        Auth::logout();
        return redirect()->route('admin.login');
    }


    public function postLoginAdmin(Request $request)
    {   
        $remember = $request->has('remember_me') ? true : false;
        if (Auth::attempt(['email' => $request->email, 'password' => $request->password], $remember)) {
            if(auth()->user()->isAdmin())
                {
                    return redirect()->to('homes');
                }
            return redirect()->route('Homeindex');
        }
        return redirect()->back()->with('status','Login Failed!');
    }
}
