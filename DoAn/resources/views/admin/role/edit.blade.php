@extends('layouts.admin')

@section('title')
<title>Trang chủ</title>
@endsection

@section('css')
  <link rel="stylesheet" href="{{asset('admins/role/add/add.css')}}">
@endsection

@section('js')
  <script src="{{asset('admins/role/add/add.js')}}">
   
  </script>
@endsection

@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    @include('partials.content-header',['name' => 'Roles', 'key' => 'Edit'])
  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      <div class="row">
        <form action="{{route('roles.update',['id' => $role->id])}}" method="POST" enctype="multipart/form-data" style="width: 100%">
          <div class="col-md-12">
            
              @csrf
                <div class="form-group">
                  <label >Tên vai trò</label>
                  <input type="text" value="{{$role->name}}" name="name" class="form-control " placeholder="Nhập tên vai trò">  

                  
                </div>

                <div class="form-group">
                    <label >Mô tả vai trò</label>
                   
                    <textarea name="display_name" class="form-control "  rows="4"> {{$role->display_name}}</textarea>
                  </div>
                          
               
          </div>
        <div class="col-md-12">
            <div class="row">
              <div class="col-md-12">
                <label >
                  <input type="checkbox" class="checkall">
                  checkall
                </label>
              </div>
           
                @foreach ($permissions as $item )
                <div class="card border-primary mb-3 col-md-12" >
                    <div class="card-header">
                        <label for="">
                            <input type="checkbox" value="" class="checkbox_wrapper">
                        </label>
                      Module {{$item->name}}
                    </div>
                    <div class="row">
                        @foreach ($item->permissionChidrent as $item)
                        <div class="card-body text-primary col-md-3">
                            <h5 class="card-title">
                                <label for="">
                                    <input {{$permissionsChecked->contains('id',$item->id) ? 'checked': ''}} type="checkbox" class="checkbox_childrent" name="permission_id[]" value="{{$item->id}}">
                                </label>
                              {{$item->name}}
                            </h5>
                              </div>
                        @endforeach         
                    </div>
                   
                </div>
                @endforeach
               
                
          
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
          
       
      </div>
      <!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->
@endsection

