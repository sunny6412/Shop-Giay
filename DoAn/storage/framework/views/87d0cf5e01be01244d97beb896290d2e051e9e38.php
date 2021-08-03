


<?php $__env->startSection('title'); ?>
    <title>Home page</title>
    <?php if(session('alert')): ?>
        <div class="alert alert-success">
            <?php echo e(session('alert')); ?>

        </div>
    <?php endif; ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('css'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('home/home.css')); ?>">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('home/home.js')); ?>">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

<!--slider-->
<?php echo $__env->make('components.slider', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<!--/slider-->


<section>
    <div class="container">
        <div class="row">
            <?php echo $__env->make('components.sliderbar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            
            <div class="col-sm-9 padding-right">
                <!--features_items-->
               <?php echo $__env->make('fontend.components.feature_product', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <!--features_items-->
                

                <!--category-tab-->
                <?php echo $__env->make('fontend.components.category_tab', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <!--/category-tab-->
                

                <!--recommended_items-->
               
                
                <!--/recommended_items-->
                
            </div>
        </div>
    </div>
</section>


<?php $__env->stopSection(); ?>


<?php echo $__env->make('fontlayouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/DoAn/resources/views/fontend/index.blade.php ENDPATH**/ ?>