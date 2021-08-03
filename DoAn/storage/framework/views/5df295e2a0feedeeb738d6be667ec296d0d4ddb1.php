

<?php $__env->startSection('title'); ?>
<title>Trang chủ</title>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('css'); ?>
<link rel="stylesheet" href="<?php echo e(asset('admins/slider/index/index.css')); ?>">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>
<script src="<?php echo e(asset('vendors/sweetAlert2/sweetalert2@11.js')); ?>"></script>
<script src="<?php echo e(asset('admins/slider/index/index.js')); ?>"></script>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <?php echo $__env->make('partials.content-header',['name' => 'User','key' => 'List'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>;

  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          <a href="<?php echo e(route('users.create')); ?>" class="btn btn-success float-right m-2">Add</a>
        </div>
        <div class="col-md-12">
          <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Tên</th>
                <th scope="col">email</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody>

              <?php $__currentLoopData = $users; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <?php
                if($item->role == NULL ){

                  
              ?>
              <tr>
                <th scope="row"><?php echo e($item->id); ?></th>
                <td><?php echo e($item->name); ?></td>
                <td><?php echo e($item->email); ?></td>
                <td>
                  
                  <a data-url="<?php echo e(route('users.delete',['id' => $item->id])); ?>" class="btn btn-danger action_delete">Delete</a>
                </td>
              </tr>
              <?php
                }
              ?>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              
            </tbody>
          </table>
        </div>
       <div class="col-md-12">
         <?php echo e($users->links()); ?>

       </div>
      </div>
      <!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->
<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/DoAn/resources/views/admin/user/index.blade.php ENDPATH**/ ?>