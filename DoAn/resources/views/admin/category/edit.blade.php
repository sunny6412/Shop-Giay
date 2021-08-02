@extends('layouts.admin')

@section('title')
<title>Trang chủ</title>
@endsection

@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    @include('partials.content-header',['name' => 'category', 'key' => 'Edit'])
  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      <div class="row">
          <div class="col-md-6">
            <form action="{{route('categories.update',['id' => $category->id])}}" method="POST">
              @csrf
                <div class="form-group">
                  <label >Tên danh mục</label>
                  <input type="text" name="name" value="{{$category->name}}" class="form-control" placeholder="Nhập tên danh mục">  
                </div>
    
                <div class="form-group">
                    <label>Chọn danh mục cha</label>
                    <select class="form-control" name="parent_id">
                      <option value="0">Chọn danh mục cha</option>
                      {!! $htmlOption !!}
                    </select>
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

