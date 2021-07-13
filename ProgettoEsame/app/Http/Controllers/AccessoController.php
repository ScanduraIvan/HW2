<?php

use Illuminate\Routing\Controller;
use App\Models\Utente;
use App\Models\Prenotazione;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

class AccessoController extends Controller {

    public function index() {
        if(session('username')) {
            return redirect("homepage");
        }
        else {
            return view('accesso')->with('errore', 0)->with('csrf_token', csrf_token());
        }
    }

    public function checkLogin() {
        $request= request();

        $user= filter_var($request['username'], FILTER_VALIDATE_EMAIL) ? "email" : "username";

        $utente = Utente::where($user,$request["username"])->first();
        if($utente !== null) {
            if(password_verify($request["password"], $utente["password"])){
            Session::put('id', $utente->id);
            Session::put('username', $utente->username);
            if(Prenotazione::where('utente_id', $utente['id'])->first())
                Session::put('prenotazioni', true);
                else
                Session::put('prenotazoni', null);
                
            return redirect("homepage");}
            else {
                return view('accesso')->with('errore', 1)->with('csrf_token', csrf_token());
            }
        }else {
            return view('accesso')->with('errore', 1)->with('csrf_token', csrf_token());
        }
    }

    public function logout() {
        Session::flush();
        return redirect('homepage');
    }

}
?>