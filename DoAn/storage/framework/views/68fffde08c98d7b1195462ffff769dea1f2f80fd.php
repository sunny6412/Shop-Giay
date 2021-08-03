

<?php $__env->startSection('title'); ?>
<title>Trang chủ</title>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <?php echo $__env->make('partials.content-header',['name' => 'Đơn hàng','key' => 'Detail'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          
        </div>
        <div class="container">
            <p>Mã đơn đặt hàng: <?php echo e($order->id); ?></p>
            <p>Tên khách hàng: <?php echo e($order->customer_name); ?></p>
            <p>Email: <?php echo e($order->email); ?></p>
            <p>Phone: <?php echo e($order->phone); ?></p>
            <p>Địa chỉ: <?php echo e($order->address); ?></p> 
            <p>Ngày đặt hàng: <?php echo e($order->created_at); ?></p>  
            <p>Tổng tiền:  <?php echo e($order->total); ?></p>
            <p>Ghi chú: <?php echo e($order->comments); ?></p>
            <p>Trạng thái:  <?php echo e($order->status); ?></p>
               
               
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

              <?php $__currentLoopData = $list; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <tr>
                <th scope="row"><?php echo e($item->id); ?></th>
                <td><?php echo e($item->order_id); ?></td>
                <td><?php echo e($item->product_id); ?></td>
                <td><?php echo e($item->product->name); ?></td>
                <td><?php echo e($item->quantity); ?></td>
                <td><?php echo e($item->price); ?></td>
                <td><?php echo e($item->price * $item->quantity); ?></td>
              </tr>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> 
              
            </tbody>
          </table>
        </div>
       <div class="col-md-12">
         
       </div>
      </div>
      <!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->
<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/DoAn/resources/views/admin/customer/detail.blade.php ENDPATH**/ ?>