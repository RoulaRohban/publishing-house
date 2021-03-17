<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Stuff extends Model
{
    protected $guarded = ['id','created_at','updated_at'];

    public function author(){
        return $this->belongsTo(Author::class);
    }
}
