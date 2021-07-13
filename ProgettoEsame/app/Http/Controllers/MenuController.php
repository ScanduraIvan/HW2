<?php

use Illuminate\Routing\Controller;
use App\Models\Menu;
use App\Models\Ristorante;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

class MenuController extends Controller {

    public function index(){
        return view('menu');
    }


    public function caricaMenu($nomeRistorante)
    {
      
        $menu= Menu::join("Ristorante","Ristorante.id","=","Menu.ristorante_id")->where('Ristorante.nome',$nomeRistorante)->first();
        return $menu;
    }
}


?>