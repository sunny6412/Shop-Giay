@extends('layouts.admin')

@section('title')
<title>Edit product</title>
@endsection



@section('css')
<link href="{{asset('vendors/select2/select2.min.css')}}" rel="stylesheet" />
<link href="{{asset('admins/Product/add/add.css')}}" rel="stylesheet" />
@endsection


@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    @include('partials.content-header',['name' => 'product', 'key' => 'Edit'])
  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      <div class="row">
          <div class="col-md-6">
            <form action="{{route('product.update',['id' => $product->id])}}" method="POST" enctype="multipart/form-data">
              @csrf
                <div class="form-group">
                  <label >Tên sản phẩm</label>
                  <input type="text" name="name" value="{{$product->name}}"  class="form-control" placeholder="Nhập tên sản phẩm">  
                </div>

                <div class="form-group">
                    <label >Giá sản phẩm</label>
                    <input type="text"  name="price" value="{{$product->price}}" class="form-control">  
                  </div>

                  <div class="form-group">
                    <label >Ảnh đại diện</label>
                    <input type="file" name="feature_image_path" class="form-control-file">  

                    <div class="col-md-4 feature_image_container">
                      <div class="row">
                          <img class="feature_image" src="{{ $product->feature_image_path }}" alt="">
                      </div>
                  </div>

                  </div>

                  <div class="form-group">
                    <label>Ảnh chi tiết</label>
                    <input type="file"
                           multiple
                           class="form-control-file"
                           name="image_path[]"
                    >
                    <div class="col-md-12 container_image_detail">
                        <div class="row">
                            @foreach($product->productImages as $producImageItem)
                                <div class="col-md-3">
                                    <img class="image_detail_product"
                                         src="{{ $producImageItem->image_path }}" alt="">
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>

                <div class="form-group">
                  <label>Chọn danh mục</label>
                  <select class="form-control select2_init" name="category_id">
                      <option value="">Chọn danh mục</option>
                      {!! $htmlOption !!}
                  </select>
              </div>


                  <div class="form-group">
                    <label>Nhập tags cho sản phẩm</label>
                    <select name="tags[]" class="form-control tags_select_choose" multiple="multiple">
                        @foreach($product->tags as $tagItem )
                            <option value="{{ $tagItem->name }}" selected>{{ $tagItem->name }}</option>
                        @endforeach

                    </select>
                </div>


                  <div class="form-group">
                    <label>Nhập nội dung</label>
                    <textarea class="form-control" name="contents"  rows="3">{{$product->content}}</textarea>
                  </div>
                
                <button type="submit" class="btn btn-primary">Submit</button>
              </form>
          </div>
        
       
      </div>
      <!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->
@endsection

@section('js')
<script src="{{asset('vendors/select2/select2.min.js')}}"></script>
<script src="{{asset('admins/Product/add/add.js')}}"></script>
@endsection

