<div class="features_items">
    <h2 class="title text-center">Features Items</h2>
    <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $productsItem): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <div class="col-sm-4">
        <div class="product-image-wrapper">
            <div class="single-products">
                    <div class="productinfo text-center">
                        <a href="<?php echo e(route('productDetail',['id' => $productsItem->id])); ?>"><img  src="<?php echo e($productsItem->feature_image_path); ?>" alt="" /></a>
                        <h2><?php echo e(number_format($productsItem->price)); ?> VNĐ</h2>
                        <p><?php echo e($productsItem->name); ?></p>
                        <a data-url="<?php echo e(route('giohang.add',['id' => $productsItem->id])); ?>" class="btn btn-default add-to-cart add_to_cart">
                            <i class="fa fa-shopping-cart"></i>                         
                            Add to cart                      
                        </a>
                    </div>
                    
            </div>
            <div class="choose">
                <ul class="nav nav-pills nav-justified">
                    
                </ul>
            </div>
        </div>
    </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
  

    
</div>

<?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/DoAn/resources/views/fontend/components/feature_product.blade.php ENDPATH**/ ?>