

<?php $__env->startSection('title'); ?>
    <title>Home page</title>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('css'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('home/home.css')); ?>">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('home/home.js')); ?>">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>


<!--form-->
<section id="form">
    <div class="container">
        <div class="row">
            <div class="col-sm-4 col-sm-offset-1">
                <div class="login-form"><!--login form-->
                    <h2>Thông tin địa chỉ của khách hàng</h2>
                    <form action="<?php echo e(route('giohang.submit')); ?>" method="POST">
                        <?php echo csrf_field(); ?>
                        <input type="text" name="name" required placeholder="Họ và tên" />
                        <input type="text" name="email" required placeholder="Nhập email" />
                        <input type="text" name="phone" required placeholder="Nhập số điện thoại" />
                        <input type="text" name="address" required placeholder="Nhập địa chỉ giao hàng" />
                        <input type="text" name="comments" required placeholder="Nhập size giày của bạn" />
                        
                        <button type="submit" class="btn btn-default">Gửi</button>
                    </form>
                </div><!--/login form-->
            </div>


        </div>
    </div>
</section>
<!--/form-->

<?php $__env->stopSection(); ?>


	
	
	
	

<?php echo $__env->make('fontlayouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/DoAn/resources/views/products/thanhtoan/thanhtoan.blade.php ENDPATH**/ ?>