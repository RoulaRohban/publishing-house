<?php

namespace App;

use App\Models\OrderDetail;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $guarded = ['id', 'updated_at'];
//    protected $hidden = ['created_at', 'updated_at'];
//    public function details()
//    {
//        return $this->hasMany(OrderDetail::class);
//    }
    public function product(){
        return $this->belongsTo(Product::class);
    }
    public function getCreatedAtAttribute($date)
    {
        return Carbon::createFromFormat('Y-m-d H:i:s', $date)->format('M d Y');
    }
}
