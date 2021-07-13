<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Prenotazione extends Model {

    protected $table = 'prenotazione';

    public $timestamps=false;

    protected $fillable = [
        'tavolo','ristorante_id','data','ora','numero_persone','fine_occupazione','cognome','numero_telefono','utente_id'
    ];


    public function utente(){
        return $this->hasOne('App\Models\utente');
        }

    public function ristorante(){
        return $this->hasOne('App\Models\ristorante');
        }

}
?>