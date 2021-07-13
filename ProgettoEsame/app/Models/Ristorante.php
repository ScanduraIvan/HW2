<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Ristorante extends Model {

    protected $table = 'ristorante';

    public $timestamps=false;

    protected $fillable = [
        'nome','citta','indirizzo','telefono','immagine','descrizione'
    ];


    public function tavolo(){
        return $this->hasMany('App\Models\tavolo');
        }

    public function menu(){
        return $this->hasOne('App\Models\menu');
        }

    public function preferiti(){
        return $this->hasMany('App\Models\preferiti');
        }

    public function prenotazione(){
        return $this->hasMany('App\Models\prenotazione');
        }

}
?>