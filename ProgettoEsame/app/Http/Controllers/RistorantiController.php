<?php

use Illuminate\Routing\Controller;
use App\Models\Ristorante;
use App\Models\Preferiti;
use App\Models\Utente;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

class RistorantiController extends Controller {

    public function index(){
        return view('ristoranti');
    }

    public function caricaContenuti(){

          $r = Ristorante::all();
          return $r;

    }

    public function caricaPreferiti(){

        $session_id = Session::get('id');
        if($session_id)
        {
            $preferiti=Preferiti::where('utente_id',$session_id)->get();
            return $preferiti;
        }
        return json_encode(1);
    }

    public function aggiungiPreferiti($id){

        $session_id = Session::get('id');
        if($session_id)
        {
            $r=Ristorante::where('id',$id)->first();

            $nuovoPreferito=Preferiti::create([
           'utente_id'=>$session_id,
           'ristorante_id'=>$id,
           'nome_ristorante'=>$r['nome'],
           'immagine'=>$r['immagine'],
           'descrizione'=>$r['descrizione']
            ]);
            if($nuovoPreferito){
            return json_encode(['type'=>'si','response'=>"elemento aggiunto a preferiti."]);
            }
        }
    }    

    public function rimuoviPreferiti($id){
        $session_id = Session::get('id');
        if($session_id)
        {
            $r=Preferiti::where('utente_id',$session_id)->where('ristorante_id',$id)->delete();

            if($r){
            return json_encode(['type'=>'si','response'=>'preferito rimosso']);
            }
        }
    }

}

?>