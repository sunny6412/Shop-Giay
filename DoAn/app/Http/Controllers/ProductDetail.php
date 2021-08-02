<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\product;
use App\Models\Setting;
use Illuminate\Http\Request;

class ProductDetail extends Controller
{
    private $category;
    private $setting;
    private $product;
    public function __construct(Category $category, Setting $setting,product $product)
    {
        $this->category = $category;
        $this->setting = $setting;
        $this->product = $product;
    }

    public function index($id){
        $ProductDetail = $this->product->find($id);
        $category = $this->category->where('parent_id',0)->latest()->get();
        $products = $this->product->latest()->take(6)->get();
        $productRecommend = $this->product->latest('views_count','desc')->take(6)->get();
        $categoryList = $this->category->where('parent_id',0)->take(2)->get();
        $commentRoute = route('comments.userComment');
        // dd($commentRoute);
        return view('products.product_detail.list',compact('ProductDetail','category','products','productRecommend','categoryList','commentRoute','id'));
    }
}
