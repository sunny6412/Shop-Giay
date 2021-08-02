@extends('layouts.admin')

@section('title')
<title>Settings</title>
@endsection

@section('css')
<link rel="stylesheet" href="{{asset('admins/setting/add/add.css')}}">
@endsection

@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    @include('partials.content-header',['name' => 'Settings', 'key' => 'Edit'])
  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      <div class="row">
          <div class="col-md-6">
            <form action="{{route('settings.update', ['id' => $setting->id])}}" method="POST">
              @csrf
                <div class="form-group">
                  <label >Config key</label>
                  <input type="text" value="{{$setting->config_key}}" name="config_key" class="form-control @error('config_key') is-invalid @enderror" placeholder="Nhập tên config key">   
                  @error('config_key')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                </div>

                @if (request()->type === 'Text')
                <div class="form-group">
                    <label >Config value</label>
                    <input type="text" value="{{$setting->config_value}}" name="config_value" class="form-control @error('config_value') is-invalid @enderror" placeholder="Nhập tên config value">  
                    @error('config_value')
                    <div class="alert alert-danger">{{ $message }}</div>
                @enderror
                  </div>
                @elseif (request()->type === 'Textarea')
                <div class="form-group">
                    <textarea name="config_value" rows="5" class="form-control @error('config_value') is-invalid @enderror" placeholder="Nhập tên config value">{{$setting->config_value}}</textarea>
                    @error('config_value')
                    <div class="alert alert-danger">{{ $message }}</div>
                @enderror
                </div>
                @endif
                
    
                
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

