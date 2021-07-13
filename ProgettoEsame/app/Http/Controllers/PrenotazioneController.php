<?php

use Illuminate\Routing\Controller;
use App\Models\Utente;
use App\Models\Prenotazione;
use App\Models\Ristorante;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

class PrenotazioneController extends Controller {

    public function index(){
            return view('prenotazione')->with('errore', 0)->with("csrf_token",csrf_token());
    }

    public function prenotazioneTavolo(){
        $request=request();
         
        $session_username=Session::get('id');
        if( isset($request["ristorante"]) && isset($request["cognome"]) && isset($request["numero_persone"]) &&
          (($request["data"]) || isset($request["ora"]) || isset($request["telefono"]))) {
     
        $ristorante=Ristorante::where('nome',$request["ristorante"])->first();
        $prenotazione = Prenotazione::create([
     
            'ristorante_id'=>$ristorante["id"],
            'cognome'=>$request["cognome"],
            'numero_persone'=>$request["numero_persone"],
            'data'=>$request["data"],
            'ora'=>$request["ora"],
            'numero_telefono'=>$request["telefono"],
            'utente_id'=>$session_username
     
        ]);
     
        if($prenotazione){
            Session::put('prenotazioni', true);
            return view('prenotazione_effettuata');
        }else{
        return view('prenotazione')->with('errore', 1)->with('csrf_token', csrf_token());
     
    }
    }else{
        return view('prenotazione')->with('errore', 2)->with('csrf_token', csrf_token());
    }
     
    }

}

?>
