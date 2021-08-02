@extends('layouts.admin')

@section('title')
<title>Trang chủ</title>
@endsection

@section('css')
<link rel="stylesheet" href="{{asset('admins/slider/index/index.css')}}">
@endsection

@section('js')
<script src="{{asset('vendors/sweetAlert2/sweetalert2@11.js')}}"></script>
<script src="{{asset('admins/slider/index/index.js')}}"></script>
@endsection

@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  @include('partials.content-header',['name' => 'Role','key' => 'Add']);

  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          <a href="{{route('roles.create')}}" class="btn btn-success float-right m-2">Add</a>
        </div>
        <div class="col-md-12">
          <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Tên vai trò</th>
                <th scope="col">Mô tả vai trò</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody>

              @foreach ($roles as $item)
              <tr>
                <th scope="row">{{$item->id}}</th>
                <td>{{$item->name}}</td>
                <td>{{$item->display_name}}</td>
                <td>
                  <a href="{{route('roles.edit',['id' => $item->id])}}" class="btn btn-default">Edit</a>
                  <a data-url="" class="btn btn-danger action_delete">Delete</a>
                </td>
              </tr>
              @endforeach
              
            </tbody>
          </table>
        </div>
       <div class="col-md-12">
         {{$roles->links()}}
       </div>
      </div>
      <!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->
@endsection

