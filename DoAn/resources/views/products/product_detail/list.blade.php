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



<section>
    <div class="container">
        <div class="row">         
                @include('components.sliderbar')

            <div class="col-sm-9 padding-right">
                <div class="product-details">
                    <!--product-details-->
                    <div class="col-sm-5">
                        <div class="view-product">
                            <img src="{{$ProductDetail->feature_image_path}}" alt="" />
                        </div>
                    </div>
                    <!--/product-information-->
                    <div class="col-sm-7">
                        <div class="product-information">
                            <img src="images/product-details/new.jpg" class="newarrival" alt="" />
                            <h2>{{$ProductDetail->name}}</h2>
                            <img src="{{asset('Eshopper/images/product-details/rating.png')}}" alt="" />
                            <span>
                                <span>{{number_format($ProductDetail->price)}} VNĐ</span>
                                <label>New</label>
                                {{-- <input type="number" value="1" /> --}}
                                <div>
                                    <button type="button" class="btn btn-fefault cart add_to_cart" data-url="{{route('giohang.add',['id' => $ProductDetail->id])}}">
                                        <i class="fa fa-shopping-cart"></i>
                                        Add to cart
                                    </button>
                                </div>
                            </span>
                            <p>{{$ProductDetail->content}}</p>
                            <a href=""><img src="{{asset('Eshopper/images/product-details/share.png')}}" class="share img-responsive" alt="" /></a>
                        </div>
                    </div>
                </div>
               
                <!--/product-information-->

                <!--/product-details-->
            </div>
        </div>
</section>


@endsection



	

				
			
					

					

					

	

	

  











		

	
