
@extends('fontlayouts.master')

@section('title')
    <title>Home page</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{asset('home/home.css')}}">
@endsection

@section('js')
    <link rel="stylesheet" href="{{asset('home/home.js')}}">
@endsection

@section('content')




    <section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="#">Home</a></li>
				  <li class="active">Shopping Cart</li>
				</ol>

			</div>
            <div class="table-responsive cart_info urldelete" data-url="{{route('giohang.delete')}}">
                <table class="table table-condensed update_cart_url" data-url="{{route('giohang.update')}}">
                    <thead>
                        <tr class="cart_menu">
                            <td class="image">Hình ảnh</td>
                            <td class="description">Tên sản phẩm</td>
                            <td class="price">Giá tiền</td>
                            <td class="quantity">Số lượng</td>
                            <td class="total">Tổng giá tiền</td>
                            <td>Action</td>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $total = 0;
                        @endphp
                        @foreach ($carts as $key => $item)
                        @php
                            $total += $item['price'] * $item['quantity'];
                        @endphp
                        <tr>
                            <td class="cart_product">
                               <img style="width: 100px; height: 100px;"  src="{{$item['image']}}" alt="">
                            </td>
                            <td class="cart_description">
                                <h4>{{$item['name']}}</h4>
                            </td>
                            <td class="cart_price">
                                <p>{{number_format($item['price'])}}</p>
                            </td>
                            <td class="cart_quantity">
                                <div class="cart_quantity_button">
                                    <input class="cart_quantity_input" type="number" min="1" value="{{$item['quantity']}}">
                                </div>
                            </td>
                            <td class="cart_total">
                                <p class="cart_total_price">{{number_format($item['price'] * $item['quantity'])}}</p>
                            </td>
                            <td>
                                <a href="" class="btn btn-danger update-cart" data-id="{{$key}}">Update</a>
                                <a href="" class="btn btn-success remove-from-cart" data-id="{{$key}}">Delete</a>
                            </td>
                        </tr>
                        @endforeach
            
                     
            
            
                    </tbody>
                </table>
                <div class="col-md-10">
                    <h2>Tổng thanh toán: {{number_format($total)}} VNĐ</h2>
                </div>

                    <div class="col-md-2 btn btn-success" >
                        <a href="{{route('giohang.thanhtoan')}}" style="color: white">Thanh toán</a>
                    </div>
            </div>
		</div>
	</section>


@endsection








	


