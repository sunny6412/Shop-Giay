@extends('layouts.admin')

@section('title')
<title>Trang chủ</title>
@endsection

@section('css')
  <link rel="stylesheet" href="{{asset('admins/slider/add/add.css')}}">
@endsection

@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    @include('partials.content-header',['name' => 'Slider', 'key' => 'Edit'])
  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      <div class="row">
          <div class="col-md-6">
            <form action="{{route('slider.update',['id' => $slider->id])}}" method="POST" enctype="multipart/form-data">
              @csrf
                <div class="form-group">
                  <label >Tên Slider</label>
                  <input type="text" value="{{$slider->name}}" name="name" class="form-control @error('name') is-invalid @enderror" placeholder="Nhập tên slider">  

                  @error('name')
                  <div class="alert alert-danger">{{ $message }}</div>
              @enderror
                </div>

                <div class="form-group">
                    <label >Mô tả</label>
                   
                    <textarea name="description" class="form-control @error('description') is-invalid @enderror"  rows="4"> {{$slider->description}}</textarea>
                    @error('description')
                    <div class="alert alert-danger">{{ $message }}</div>
                @enderror
                  </div>
                  
                  <div class="form-group">
                    <label>Hình ảnh</label>
                    <input type="file"
                           class="form-control @error('image_path') is-invalid @enderror"
                           name="image_path"

                    >
                    <div class="col-md-4">
                        <img class="image_slider" src="{{$slider->image_path}}" alt="">
                    </div>
                    @error('image_path')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
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

