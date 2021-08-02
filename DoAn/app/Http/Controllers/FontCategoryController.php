<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\product;
use App\Models\Slider;
use Illuminate\Http\Request;

class FontCategoryController extends Controller
{
    private $slider;
    private $category;
    private $product;
    public function __construct(Slider $slider, Category $category, product $product)
    {
        $this->slider = $slider;
        $this->category = $category;
        $this->product = $product;
    }
    public function index($slug,$categoryId){

        $categoryList = $this->category->where('parent_id',0)->take(2)->get();
        $category = $this->category->where('parent_id',0)->latest()->get();
        $products = $this->product->where('category_id',$categoryId)->paginate(6);
        return view('products.category.list',compact('categoryList','products','category'));
    }

    public function showProduct($slug,$productId){

        $categoryList = $this->category->where('parent_id',0)->take(2)->get();
        $category = $this->category->where('parent_id',0)->latest()->get();
        $products = $this->product->where('category_id',$productId)->paginate(6);
        return view('products.product_detail.list',compact('categoryList','products','category'));
    }
}
