

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


<section>
    <div class="container">
        <div class="row">

                   

            <?php echo $__env->make('components.sliderbar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            
            <div class="col-sm-9 padding-right">
                <div class="features_items"><!--features_items-->
                    <h2 class="title text-center">Features Items</h2>

                    <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="col-sm-4">
                        <div class="product-image-wrapper">
                            <div class="single-products">
                                <div class="productinfo text-center">
                                    <a href="<?php echo e(route('productDetail',['id' => $product->id])); ?>"><img src="<?php echo e($product->feature_image_path); ?>" alt="" /></a>
                                    <h2><?php echo e(number_format($product->price)); ?> VNĐ</h2>
                                    <p><?php echo e($product->name); ?></p>
                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                </div>
                                
                            </div>
                            <div class="choose">
                                <ul class="nav nav-pills nav-justified">
                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>


                    
               <?php echo e($products->links()); ?>

                </div><!--features_items-->
            </div>
        </div>
    </div>
</section>

<?php $__env->stopSection(); ?>




	

	

<?php echo $__env->make('fontlayouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/DoAn/resources/views/products/category/list.blade.php ENDPATH**/ ?>