<div class="features_items">
    <h2 class="title text-center">Features Items</h2>
    @foreach ($products as $productsItem)
    <div class="col-sm-4">
        <div class="product-image-wrapper">
            <div class="single-products">
                    <div class="productinfo text-center">
                        <a href="{{route('productDetail',['id' => $productsItem->id])}}"><img  src="{{$productsItem->feature_image_path}}" alt="" /></a>
                        <h2>{{number_format($productsItem->price)}} VNĐ</h2>
                        <p>{{$productsItem->name}}</p>
                        <a data-url="{{route('giohang.add',['id' => $productsItem->id])}}" class="btn btn-default add-to-cart add_to_cart">
                            <i class="fa fa-shopping-cart"></i>                         
                            Add to cart                      
                        </a>
                    </div>
                    {{-- <div class="product-overlay">
                        <div class="overlay-content">
                            <h2>{{number_format($productsItem->price)}} VNĐ</h2>
                            <p>{{$productsItem->name}}</p>
                            <a  data-url="{{route('giohang.add',['id' => $productsItem->id])}}" class="btn btn-default add-to-cart add_to_cart">
                                <i class="fa fa-shopping-cart"></i>
                                Add to cart
                            </a>
                        </div>
                    </div> --}}
            </div>
            <div class="choose">
                <ul class="nav nav-pills nav-justified">
                    {{-- <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                    <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li> --}}
                </ul>
            </div>
        </div>
    </div>
    @endforeach
  

    
</div>
