@extends('layouts.admin')

@section('title')
<title>Settings</title>
@endsection

@section('css')
<link rel="stylesheet" href="{{asset('admins/setting/index/index.css')}}">
@endsection

@section('js')
<script src="{{asset('vendors/sweetAlert2/sweetalert2@11.js')}}"></script>
<script src="{{asset('admins/main.js')}}"></script>
@endsection

@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  @include('partials.content-header',['name' => 'setting','key' => 'List']);

  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          <div class="btn-group float-right">
            <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
              Add settings
              <span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
              <li><a href="{{route('settings.create') . '?type=Text'}}">Text</a></li>
              <li><a href="{{route('settings.create') . '?type=Textarea'}}">Textarea</a></li>
            </ul>
          </div>
          {{-- <a href="{{route('settings.create')}}" class="btn btn-success float-right m-2">Add</a> --}}
        </div>
        <div class="col-md-12">
          <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Config key</th>
                <th scope="col">Config value</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody>

              @foreach ($settings as $item)
              <tr>
                <th scope="row">{{$item->id}}</th>
                <td>{{$item->config_key}}</td>
                <td>{{$item->config_value}}</td>
                <td>
                  <a href="{{route('settings.edit', ['id' => $item->id]) . '?type=' . $item->type}}" class="btn btn-default">Edit</a>
                  <a href="" data-url="{{route('settings.delete', ['id' => $item->id])}}" class="btn btn-danger action_delete">Delete</a>
                </td>
              </tr>
              @endforeach
              
            </tbody>
          </table>
        </div>
       <div class="col-md-12">
         {{$settings->links()}}
       </div>
      </div>
      <!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->
@endsection

