<?php

use Illuminate\Routing\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

class HomeController extends Controller {

    public function index(){
        if(session('username')!== null){
            return view('homepage')->with('username',session('username'));
        }
            else{
                return view('homepage')->with('username',null);
     
            }
     
         
        }

}

?>