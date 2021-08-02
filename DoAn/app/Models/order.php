<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class order extends Model
{
    protected $guarded = [];

    public function orderDetails(){
        return $this->hasMany(order_detail::class,'order_id','id');
    }
}
