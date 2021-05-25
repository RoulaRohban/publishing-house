<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $guarded = ['id', 'created_at', 'updated_at'];
    protected $hidden = ['created_at', 'updated_at'];

    public  function author(){
        return $this->belongsTo(Author::class);
    }
    public function category(){
        return $this->belongsTo(Category::class);
    }
}
