@extends('layouts.admin')

@section('title')
<title>Trang chủ</title>
@endsection

@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  @include('partials.content-header',['name' => 'Đơn hàng','key' => 'Detail'])

  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          {{-- <a href="" class="btn btn-success float-right m-2">Add</a> --}}
        </div>
        <div class="container">
            <p>Mã đơn đặt hàng: {{$order->id}}</p>
            <p>Tên khách hàng: {{$order->customer_name}}</p>
            <p>Email: {{$order->email}}</p>
            <p>Phone: {{$order->phone}}</p>
            <p>Địa chỉ: {{$order->address}}</p> 
            <p>Ngày đặt hàng: {{$order->created_at}}</p>  
            <p>Tổng tiền:  {{$order->total}}</p>
            <p>Ghi chú: {{$order->comments}}</p>
            <p>Trạng thái:  {{$order->status}}</p>
               
               
        </div>
        <div class="col-md-12">
          <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Mã đơn hàng</th>              
                <th scope="col">Mã sản phẩm</th>
                <th scope="col">Tên sản phẩm</th>
                <th scope="col">Số lượng</th>
                <th scope="col">Đơn giá</th>
                <th scope="col">Thành tiền</th>
              </tr>
            </thead>
            <tbody>

              @foreach ($list as $item)
              <tr>
                <th scope="row">{{$item->id}}</th>
                <td>{{$item->order_id}}</td>
                <td>{{$item->product_id}}</td>
                <td>{{$item->product->name}}</td>
                <td>{{$item->quantity}}</td>
                <td>{{$item->price}}</td>
                <td>{{$item->price * $item->quantity}}</td>
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

