@extends('layouts.admin')

@section('title')
<title>Trang chủ</title>
@endsection

@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  @include('partials.content-header',['name' => 'Đơn hàng','key' => 'List']);

  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          <a href="" class="btn btn-success float-right m-2">Add</a>
        </div>
        <div class="col-md-12">
          <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Tên khách hàng</th>
                <th scope="col">email</th>
                <th scope="col">Số điện thoại</th>
                <th scope="col">Địa chỉ</th>
                <th scope="col">Mã số sản phẩm</th>
                <th scope="col">số lượng</th>
                <th scope="col">Kích thước</th>
                <th scope="col">Giá tiền</th>
                {{-- <th scope="col">Action</th> --}}
              </tr>
            </thead>
            <tbody>

              @foreach ($list as $item)
              <tr>
                <th scope="row">{{$item->id}}</th>
                <td>{{$item->name}}</td>
                <td>{{$item->email}}</td>
                <td>{{$item->phone}}</td>
                <td>{{$item->address}}</td>
                <td>{{$item->product_id}}</td>
                <td>{{$item->quantity}}</td>
                <td>{{$item->size}}</td>
                <td>{{$item->price}}</td>
                <td>
                  {{-- <a href="" class="btn btn-default">Edit</a>
                  <a href="" class="btn btn-danger">Delete</a> --}}
                </td>
              </tr>
              @endforeach
              
            </tbody>
          </table>
        </div>
       <div class="col-md-12">
         {{-- {{$categories->links()}} --}}
       </div>
      </div>
      <!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->
@endsection

