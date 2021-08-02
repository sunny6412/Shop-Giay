@extends('layouts.admin')

@section('title')
<title>Trang chủ</title>
@endsection

@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    @include('partials.content-header',['name' => 'Đơn hàng', 'key' => 'Edit'])
  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      <div class="row">
          <div class="col-md-6">
            <form action="{{route('donhang.update',['id' => $list->id])}}" method="POST">
              @csrf
                <div class="form-group">
                  <label >Tên khác hàng</label>
                  <input type="text" name="name" value="{{$list->customer_name}}" class="form-control">  
                </div>

                <div class="form-group">
                    <label >Số điện thoại</label>
                    <input type="text" name="phone" value="{{$list->phone}}" class="form-control">  
                  </div>

                  <div class="form-group">
                    <label >email</label>
                    <input type="text" name="email" value="{{$list->email}}" class="form-control">  
                  </div>

                  <div class="form-group">
                    <label >Địa chỉ</label>
                    <input type="text" name="address" value="{{$list->address}}" class="form-control">  
                  </div>

                  <div class="form-group">
                    <label >Tổng tiền</label>
                    <input type="text" name="total" value="{{$list->total}}" class="form-control">  
                  </div>

                  <div class="form-group">
                    <label>Trạng thái</label>
                    <select class="form-control" name="status">
                        @if ($list->status == "Đang xử lý")
                        <option selected value="Đang xử lý">Đang xử lý</option>
                        <option value="Đã hủy">Đã hủy</option>
                        <option value="Hoàn tất">Hoàn tất</option>
                        @elseif ($list->status == "Đã hủy")
                        <option  value="Đang xử lý">Đang xử lý</option>
                        <option selected value="Đã hủy">Đã hủy</option>
                        <option value="Hoàn tất">Hoàn tất</option>
                        @elseif ($list->status == "Hoàn tất")
                        <option  value="Đang xử lý">Đang xử lý</option>
                        <option  value="Đã hủy">Đã hủy</option>
                        <option selected value="Hoàn tất">Hoàn tất</option>
                        @endif
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

