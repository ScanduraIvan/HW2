<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model {

    protected $table = 'menu';

    public $timestamps=false;

    protected $fillable = [
        'ristorante_id','menu'
    ];


    public function ristorante(){
        return $this->hasOne('App\Models\ristorante');
        }

}
?>