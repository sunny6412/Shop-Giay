

<?php $__env->startSection('title'); ?>
<title>Trang chủ</title>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <?php echo $__env->make('partials.content-header',['name' => 'Đơn hàng','key' => 'List'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          
        </div>
        <div class="col-md-12">
          <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Tên khách hàng</th>              
                <th scope="col">Số điện thoại</th>
                <th scope="col">email</th>
                <th scope="col">Địa chỉ</th>
                <th scope="col">Ngày đặt hàng</th>
                <th scope="col">Tổng tiền</th>
                <th scope="col">Trạng thái</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody>

              <?php $__currentLoopData = $list; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <tr>
                <th scope="row"><?php echo e($item->id); ?></th>
                <td><?php echo e($item->customer_name); ?></td>
                <td><?php echo e($item->phone); ?></td>
                <td><?php echo e($item->email); ?></td>
                <td><?php echo e($item->address); ?></td>
                <td><?php echo e($item->created_at); ?></td>
                <td><?php echo e($item->total); ?></td>
                <td><?php echo e($item->status); ?></td>
                <td>
                  
                   <a href="<?php echo e(route('donhang.detail',['id' => $item->id])); ?>" class="btn btn-default">ViewDetail</a>  
                   <?php if($item->status == "Đang xử lý"): ?>
                   <a href="<?php echo e(route('donhang.edit',['id' => $item->id])); ?>" class="btn btn-danger">Update</a>
                   <?php endif; ?>                
                 
                </td>
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


<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/DoAnHk2/resources/views/admin/customer/index.blade.php ENDPATH**/ ?>