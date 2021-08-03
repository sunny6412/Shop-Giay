

<?php $__env->startSection('title'); ?>
<title>Trang chủ</title>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    <?php echo $__env->make('partials.content-header',['name' => 'category', 'key' => 'Add'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      <div class="row">
          <div class="col-md-6">
            <form action="<?php echo e(route('categories.store')); ?>" method="POST">
              <?php echo csrf_field(); ?>
                <div class="form-group">
                  <label >Tên danh mục</label>
                  <input type="text" name="name" class="form-control" placeholder="Nhập tên danh mục">  
                </div>
    
                <div class="form-group">
                    <label>Chọn danh mục cha</label>
                    <select class="form-control" name="parent_id">
                      <option value="0">Chọn danh mục cha</option>
                      <?php echo $htmlOption; ?>

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
<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/DoAn/resources/views/admin/category/add.blade.php ENDPATH**/ ?>