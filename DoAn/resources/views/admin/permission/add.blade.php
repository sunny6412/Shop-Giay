@extends('layouts.admin')

@section('title')
<title>Trang chủ</title>
@endsection

@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    @include('partials.content-header',['name' => 'Permissions', 'key' => 'Add'])
  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      <div class="row">
          <div class="col-md-12">
            <form action="{{route('permissions.store')}}" method="POST">
              @csrf
    
                <div class="form-group">
                    <label>Chọn tên module</label>
                    <select class="form-control" name="module_parent">
                        <option value="">Chọn tên module</option>
                        @foreach (config('permissions.table_module') as $modulItem)
                        <option value="{{$modulItem}}">{{$modulItem}}</option>
                        @endforeach          
                    </select>
                  </div>

                  <div class="form-group">
                      <div class="row">
                          @foreach (config('permissions.module') as $module )
                          <div class="col-md-3">
                            <label > 
                                <input type="checkbox" name="module_chilrent[]" value="{{$module}}">
                                {{$module}}
                            </label>
                          </div>
                          @endforeach
                          
                      </div>
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

