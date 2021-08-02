@extends('layouts.admin')

@section('title')
<title>Trang chủ</title>
@endsection

@section('css')
<link href="{{asset('vendors/select2/select2.min.css')}}" rel="stylesheet" />
<link href="{{asset('admins/user/add/add.css')}}" rel="stylesheet" />
@endsection

@section('js')
<script src="{{asset('vendors/select2/select2.min.js')}}"></script>
<script src="{{asset('admins/user/add/add.js')}}"></script>
@endsection

@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    @include('partials.content-header',['name' => 'User', 'key' => 'Add'])
  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      <div class="row">
          <div class="col-md-6">
            <form action="{{route('users.store')}}" method="POST" enctype="multipart/form-data">
              @csrf
                <div class="form-group">
                  <label >Tên</label>
                  <input type="text" value="{{old('name')}}"  name="name" class="form-control " placeholder="Nhập tên">  
                </div>

                <div class="form-group">
                    <label >Email</label>
                    <input type="text" value="{{old('email')}}"  name="email" class="form-control " placeholder="Nhập Email">  
                  </div>

                  <div class="form-group">
                    <label >Password</label>
                    <input type="password"  name="password" class="form-control " placeholder="Nhập password">  
                  </div>

                  {{-- <div class="form-group">
                    <label >Chọn vai trò</label>
                    <select name="role_id[]" class="form-control select2_init" multiple>
                        <option value="">admin</option>
                        @foreach ($roles as $item )
                            <option value="{{$item->id}}">{{$item->name}}</option>
                        @endforeach
                    </select> 
                  </div> --}}


                
                
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

