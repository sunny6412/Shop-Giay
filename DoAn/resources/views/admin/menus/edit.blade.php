@extends('layouts.admin')

@section('title')
<title>Trang chủ</title>
@endsection

@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    @include('partials.content-header',['name' => 'menus', 'key' => 'Edit'])
  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      <div class="row">
          <div class="col-md-6">
            <form action="{{route('menus.update',['id' => $menuFollowIdEdit->id])}}" method="POST">
              @csrf
                <div class="form-group">
                  <label >Tên menus</label>
                  <input type="text" name="name" value="{{$menuFollowIdEdit->name}}" class="form-control" placeholder="Nhập tên menus">  
                </div>
    
                <div class="form-group">
                    <label>Chọn menus cha</label>
                    <select class="form-control" name="parent_id">
                      <option value="0">Chọn menu cha</option>
                      {{!! $optionSelect!!}}
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

