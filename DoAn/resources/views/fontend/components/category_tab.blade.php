<div class="category-tab">
    <div class="col-sm-12">
        <ul class="nav nav-tabs">
            @foreach ($category as $indexCategory => $categoryItem)
            <li class="{{$indexCategory == 0 ?'active' : ''}}">
                <a href="#category_tab_{{$categoryItem->id}}" data-toggle="tab">{{$categoryItem->name}}</a>
            </li>
            @endforeach
            
            
        </ul>
    </div>



    <div class="tab-content">

        @foreach ($category as $indexCategoryProduct => $categoryItem)
        <div class="tab-pane fade {{$indexCategoryProduct == 0 ? 'active in' : ''}} " id="category_tab_{{$categoryItem->id}}" >
            @foreach ($categoryItem->products as $item)
            <div class="col-sm-3">
                <div class="product-image-wrapper">
                    <div class="single-products">
                        <div class="productinfo text-center">
                            <img src="{{$item->feature_image_path}}" alt="" />
                            <h2>{{number_format($item->price)}} VNĐ</h2>
                            <p>{{$item->name}}</p>
                            <a data-url="{{route('giohang.add',['id' => $item->id])}}" class="btn btn-default add-to-cart add_to_cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                        </div>
                        
                    </div>
                </div>
            </div>
            @endforeach
            

        </div>
        @endforeach

       
        
        
    </div>
</div>