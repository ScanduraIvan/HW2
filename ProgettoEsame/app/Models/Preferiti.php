<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Preferiti extends Model {

    protected $table = 'preferiti';

    public $timestamps=false;

    protected $fillable = [
        'utente_id','ristorante_id','nome_ristorante','immagine','descrizione'
    ];


    public function utente(){
        return $this->hasOne('App\Models\utente');
        }

    public function ristorante(){
        return $this->hasOne('App\Models\ristorante');
        }

}
?>