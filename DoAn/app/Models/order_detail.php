<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class order_detail extends Model
{
    protected $guarded = [];
    public function order(){
        return $this->belongsTo(order::class,'order_id','id');
    }

    public function product(){
        return $this->belongsTo(product::class,'product_id','id');
    }
}
