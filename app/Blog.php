<?php

namespace App;

use App\Models\Image;
use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    protected $guarded = ['id', 'created_at', 'updated_at'];
    protected $hidden = ['created_at', 'updated_at'];

}
