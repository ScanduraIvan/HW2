<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tavolo extends Model {

    protected $table = 'tavolo';

    public $timestamps=false;

    protected $fillable = [
        'numero','ristorante_id','posti','descrizione','tipo','copertura'
    ];


    public function ristorante(){
        return $this->hasOne('App\Models\ristorante');
        }

}
?>