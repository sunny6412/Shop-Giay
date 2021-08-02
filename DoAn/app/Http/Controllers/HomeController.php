<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\customer;
use App\Models\order;
use App\Models\order_detail;
use App\Models\product;
use App\Models\Slider;
use App\Models\thanhtoan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    private $slider;
    private $category;
    private $product;
    private $customer;
    private $order;
    public function __construct(Slider $slider, Category $category, product $product, customer $customer,order $order)
    {
        $this->slider = $slider;
        $this->category = $category;
        $this->product = $product;
        $this->customer = $customer;
        $this->order = $order;
    }
    public function index()
    {
        $sliders = $this->slider->latest()->get();
        $category = $this->category->where('parent_id', 0)->latest()->get();
        $products = $this->product->latest()->take(6)->get();
        $productRecommend = $this->product->latest('views_count', 'desc')->take(6)->get();
        $categoryList = $this->category->where('parent_id', 0)->take(2)->get();
        return view('fontend.index', compact('sliders', 'category', 'products', 'productRecommend', 'categoryList'));
    }

    public function addToCart($id)
    {
        $product = $this->product->find($id);
        $cart = session()->get('cart');
        if (isset($cart[$id])) {
            $cart[$id]['quantity'] = $cart[$id]['quantity'] + 1;
        } else {
            $cart[$id] = [
                'name' => $product->name,
                'price' => $product->price,
                'quantity' => 1,
                'image' => $product->feature_image_path
            ];
        }
        session()->put('cart', $cart);
        return response()->json([
            'code' => 200,
            'message' => 'success'
        ], 200);
    }

    public function showCart()
    {
        $categoryList = $this->category->where('parent_id', 0)->take(2)->get();
        $carts = session()->get('cart');
        if ($carts == null) {
            return redirect()->route('Homeindex');
        } else {
            return view('products.cart.giohang', compact('categoryList', 'carts'));
        }
    }

    public function updateCart(Request $request)
    {
        if ($request->id && $request->quantity) {
            $carts = session()->get('cart');
            $carts[$request->id]['quantity'] = $request->quantity;
            session()->put('cart', $carts);
            $carts = session()->get('cart');
            return response()->json([
                'code' => 200,
                'message' => 'success'
            ], 200);
        }
    }

    public function deleteCart(Request $request)
    {
        if ($request->id) {
            $carts = session()->get('cart');
            if (isset($carts[$request->id])) {

                unset($carts[$request->id]);

                session()->put('cart', $carts);
            }
        }
        return response()->json([
            'code' => 200,
            'message' => 'success'
        ], 200);
    }


    public function thanhtoan()
    {
        $categoryList = $this->category->where('parent_id', 0)->take(2)->get();
        // dd(session()->get('cart'));
        return view('products.thanhtoan.thanhtoan', compact('categoryList'));
    }

    public function submitThanhtoan(Request $request)
    {
        $carts = session()->get('cart');
        $totalAmount = 0;
        foreach ($carts as $item) {
            $totalAmount += $item['price'] * $item['quantity'];
        }

        $orders = new order();
        $orders->customer_name = $request->name;
        $orders->phone = $request->phone;
        $orders->address = $request->address;
        $orders->email = $request->email;
        $orders->total = $totalAmount;
        $orders->comments = $request->comments;
        $orders->status = "Đang xử lý";
        if($orders->save()){
            // $orders->id;
            foreach($carts as $key => $item){
                $orderDetail = new order_detail();
                $orderDetail->order_id = $orders->id;
                $orderDetail->product_id = $key;
                $orderDetail->price = $item['price'];
                $orderDetail->quantity = $item['quantity'];
                $orderDetail->amount = $item['price'] * $item['quantity'];
                $orderDetail->save();
            }
        }

        $request->session()->flush();
        

        return redirect()->route('Homeindex');
    }
}
