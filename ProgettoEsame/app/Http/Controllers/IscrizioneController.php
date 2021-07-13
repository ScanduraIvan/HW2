<?php

use Illuminate\Routing\Controller;
use App\Models\Utente;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

class IscrizioneController extends Controller {


    public function index(){
        if(session('username') !== null)
            return redirect('homepage');
        else
            return view('iscrizione')->with('errore', 0)->with("csrf_token",csrf_token());
    }

    public function registrazione(){
 
        $request=request();
        $errori=$this->controlloErrori($request);
        if($errori === 0){
 
            $password = $request["password"];
            $password = password_hash($password,PASSWORD_BCRYPT);
             
            $nuovoUtente = Utente::create([
                'username' => $request['username'],
                'password'=> $password,
                'nome' => $request['nome'],
                'cognome'=> $request['cognome'],
                'email'=> $request['email'],
            ]);
 
            if($nuovoUtente){
                Session::put('username',$nuovoUtente->username);
                Session::put('id',$nuovoUtente->id);
 
                return view('homepage')->with('username',session('username'));
            }
            else{
                return view('iscrizione')->with('errore',1)->with("csrf_token",csrf_token());
            }
        }
            else{
                return view('iscrizione')->with('errore',1)->with("csrf_token",csrf_token());
            }
         
    }
 
    public function controlloErrori($data){
 
        $errori= 0;
 
        if (!filter_var($data['email'], FILTER_VALIDATE_EMAIL)) {
            $errori= 1;
        } else {
            $email = Utente::where('email', $data['email'])->exists();
            if ($email) {
                $errori= 1;
            }
        }
        if (strlen($data["password"]) < 8) {
            $errori= 1;
        }
        if (strcmp($data["password"], $data["conferma_password"]) !== 0) {
            $errori= 1;
        }
 
        $username = Utente::where('username', $data['username'])->exists();
        if ($username) {
            $errori= 1;
        }
        return $errori;
    }
 
 
    public function controlloEmail($q) {
        $utente= Utente::where('email',$q)->exists();
        return response()->json(array('exists'=>$utente));
     }
     public function controlloUsername($q) {
         $utente= Utente::where('username',$q)->exists();
         return response()->json(array('exists'=>$utente));
     }

}

?>