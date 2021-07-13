<?php

use Illuminate\Routing\Controller;
use App\Models\News_cliccate;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

class TaorminaController extends Controller {

    public function index(){
        return view('taormina');
    }

public function news() {
    $json =Http::get('http://api.mediastack.com/v1/news', [
    'access_key' => env("OPEN_APIKEY_NEWS"),
    'keywords' => 'covid-ristoranti-riaperture',
    'languages' => 'it',
    'limit' => '50',
    ]);
 
    if(!$json->successful()) return null;
 
    return $json;
}

public function immagini() {
    $json =Http::get('https://pixabay.com/api/', [
    'key' => env("OPEN_APIKEY_IMMAGINI"),
    'q' => 'Taormina',
    'per_page' => '50',
    ]);
 
    if(!$json->successful()) return null;
 
    return $json;
}

public function aggiungiLink($titolo){
    $id=Session::get('id');
     
        $click = News_cliccate::create([
     
            'utente_id'=>$id,
            'titolo'=>$titolo,
     
        ]);
        if($click){
 
            return json_encode(['type'=>'si','response'=>"elemento aggiunto "]);
 
            }else
            return json_encode(['type'=>'no','response'=>"elemento non aggiunto "]);

        }
}

?>