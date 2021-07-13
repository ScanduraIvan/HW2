<?php

use Illuminate\Routing\Controller;
use App\Models\Prenotazione;
use App\Models\Ristorante;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

class PrenotazioniUtenteController extends Controller {

    public function index(){
        return view('prenotazioni_utente');
    }

    public function caricaPrenotazioni(){
        $id=Session::get('id');
 
        $prenotazioni=Prenotazione::join("ristorante","ristorante.id","=","prenotazione.ristorante_id")->where('utente_id',$id)->get();
        return response()->json($prenotazioni);
    }

}

?>
