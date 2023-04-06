<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function index(){
        return view('register.index', [
            'title' => 'Register',
            'active' =>'register'
        ]);
    }

    public function store(Request $request){

        $validasidata = $request->validate([
            'name' => 'required|max:255',
            'username' => ['required', 'min:3', 'max:255', 'unique:users'],
            'email' => 'required|email:dns|unique:users',
            'password' => 'required|min:6|max:255'
        ]);

        //$validasidata['password'] = bcrypt($validasidata['password']);
        $validasidata['password'] = Hash::make($validasidata['password']);

        User::create($validasidata);

        //$request->session()->flash('success', 'Registration successful!! Mohon Login');
        
        return redirect('/login')->with('success', 'Registration successful!! Mohon Login');
    }
}
