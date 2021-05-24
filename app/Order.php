<?php

namespace App;

use App\Models\OrderDetail;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $guarded = ['id', 'created_at', 'updated_at'];
    protected $hidden = ['created_at', 'updated_at'];
    public function details()
    {
        return $this->hasMany(OrderDetail::class);
    }
}
