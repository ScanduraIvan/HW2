<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Utente extends Model {

    protected $table = 'utente';

    public $timestamps=false;

    protected $fillable = [
        'username','password','nome','cognome','email'
    ];


    public function news_cliccate(){
        return $this->hasMany('App\Models\news_cliccate');
        }

    public function preferiti(){
        return $this->hasMany('App\Models\preferiti');
        }

    public function prenotazione(){
        return $this->hasMany('App\Models\prenotazione');
        }

}
?>