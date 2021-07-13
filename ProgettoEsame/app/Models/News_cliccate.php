<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class News_cliccate extends Model {

    protected $table = 'news_cliccate';

    public $timestamps=false;

    protected $fillable = [
        'utente_id','link','titolo'
    ];


    public function utente(){
        return $this->hasOne('App\Models\utente');
        }

}
?>