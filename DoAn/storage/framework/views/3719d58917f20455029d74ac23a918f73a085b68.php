

<?php $__env->startSection('title'); ?>
<title>Trang chủ</title>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('css'); ?>
<link href="<?php echo e(asset('vendors/select2/select2.min.css')); ?>" rel="stylesheet" />
<link href="<?php echo e(asset('admins/user/add/add.css')); ?>" rel="stylesheet" />
<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>
<script src="<?php echo e(asset('vendors/select2/select2.min.js')); ?>"></script>
<script src="<?php echo e(asset('admins/user/add/add.js')); ?>"></script>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    <?php echo $__env->make('partials.content-header',['name' => 'User', 'key' => 'Add'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      <div class="row">
          <div class="col-md-6">
            <form action="<?php echo e(route('users.store')); ?>" method="POST" enctype="multipart/form-data">
              <?php echo csrf_field(); ?>
                <div class="form-group">
                  <label >Tên</label>
                  <input type="text" value="<?php echo e(old('name')); ?>"  name="name" class="form-control " placeholder="Nhập tên">  
                </div>

                <div class="form-group">
                    <label >Email</label>
                    <input type="text" value="<?php echo e(old('email')); ?>"  name="email" class="form-control " placeholder="Nhập Email">  
                  </div>

                  <div class="form-group">
                    <label >Password</label>
                    <input type="password"  name="password" class="form-control " placeholder="Nhập password">  
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
<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/DoAn/resources/views/admin/user/add.blade.php ENDPATH**/ ?>