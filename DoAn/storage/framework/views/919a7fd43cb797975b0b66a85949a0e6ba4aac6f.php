

<?php $__env->startSection('title'); ?>
<title>Edit product</title>
<?php $__env->stopSection(); ?>



<?php $__env->startSection('css'); ?>
<link href="<?php echo e(asset('vendors/select2/select2.min.css')); ?>" rel="stylesheet" />
<link href="<?php echo e(asset('admins/Product/add/add.css')); ?>" rel="stylesheet" />
<?php $__env->stopSection(); ?>


<?php $__env->startSection('content'); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    <?php echo $__env->make('partials.content-header',['name' => 'product', 'key' => 'Edit'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      <div class="row">
          <div class="col-md-6">
            <form action="<?php echo e(route('product.update',['id' => $product->id])); ?>" method="POST" enctype="multipart/form-data">
              <?php echo csrf_field(); ?>
                <div class="form-group">
                  <label >Tên sản phẩm</label>
                  <input type="text" name="name" value="<?php echo e($product->name); ?>"  class="form-control" placeholder="Nhập tên sản phẩm">  
                </div>

                <div class="form-group">
                    <label >Giá sản phẩm</label>
                    <input type="text"  name="price" value="<?php echo e($product->price); ?>" class="form-control">  
                  </div>

                  <div class="form-group">
                    <label >Ảnh đại diện</label>
                    <input type="file" name="feature_image_path" class="form-control-file">  

                    <div class="col-md-4 feature_image_container">
                      <div class="row">
                          <img class="feature_image" src="<?php echo e($product->feature_image_path); ?>" alt="">
                      </div>
                  </div>

                  </div>

                  <div class="form-group">
                    <label>Ảnh chi tiết</label>
                    <input type="file"
                           multiple
                           class="form-control-file"
                           name="image_path[]"
                    >
                    <div class="col-md-12 container_image_detail">
                        <div class="row">
                            <?php $__currentLoopData = $product->productImages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $producImageItem): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="col-md-3">
                                    <img class="image_detail_product"
                                         src="<?php echo e($producImageItem->image_path); ?>" alt="">
                                </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                  <label>Chọn danh mục</label>
                  <select class="form-control select2_init" name="category_id">
                      <option value="">Chọn danh mục</option>
                      <?php echo $htmlOption; ?>

                  </select>
              </div>


                  <div class="form-group">
                    <label>Nhập tags cho sản phẩm</label>
                    <select name="tags[]" class="form-control tags_select_choose" multiple="multiple">
                        <?php $__currentLoopData = $product->tags; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tagItem): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <option value="<?php echo e($tagItem->name); ?>" selected><?php echo e($tagItem->name); ?></option>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                    </select>
                </div>


                  <div class="form-group">
                    <label>Nhập nội dung</label>
                    <textarea class="form-control" name="contents"  rows="3"><?php echo e($product->content); ?></textarea>
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

<?php $__env->startSection('js'); ?>
<script src="<?php echo e(asset('vendors/select2/select2.min.js')); ?>"></script>
<script src="<?php echo e(asset('admins/Product/add/add.js')); ?>"></script>
<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/DoAn/resources/views/admin/product/edit.blade.php ENDPATH**/ ?>