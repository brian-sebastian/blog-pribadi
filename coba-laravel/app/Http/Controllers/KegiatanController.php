<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class KegiatanController extends Controller
{
    public function event(){
        return view('event', [
            'title' => 'Event',
            'active' =>'event',
        ]);
    }
}
