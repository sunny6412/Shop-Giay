

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
                <div class="product-details">
                    <!--product-details-->
                    <div class="col-sm-5">
                        <div class="view-product">
                            <img src="<?php echo e($ProductDetail->feature_image_path); ?>" alt="" />
                        </div>
                    </div>
                    <!--/product-information-->
                    <div class="col-sm-7">
                        <div class="product-information">
                            <img src="images/product-details/new.jpg" class="newarrival" alt="" />
                            <h2><?php echo e($ProductDetail->name); ?></h2>
                            <img src="<?php echo e(asset('Eshopper/images/product-details/rating.png')); ?>" alt="" />
                            <span>
                                <span><?php echo e(number_format($ProductDetail->price)); ?> VNĐ</span>
                                <label>New</label>
                                
                                <div>
                                    <button type="button" class="btn btn-fefault cart add_to_cart" data-url="<?php echo e(route('giohang.add',['id' => $ProductDetail->id])); ?>">
                                        <i class="fa fa-shopping-cart"></i>
                                        Add to cart
                                    </button>
                                </div>
                            </span>
                            <p><?php echo e($ProductDetail->content); ?></p>
                            <a href=""><img src="<?php echo e(asset('Eshopper/images/product-details/share.png')); ?>" class="share img-responsive" alt="" /></a>
                        </div>
                    </div>
                </div>
               
                <!--/product-information-->
                
                <!--/product-details-->
                <?php echo $__env->make('fontend.components.recommend_product', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>;
            </div>
        </div>
</section>


<?php $__env->stopSection(); ?>



	

				
			
					

					

					

	

	

  











		

	

<?php echo $__env->make('fontlayouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/DoAn/resources/views/products/product_detail/list.blade.php ENDPATH**/ ?>