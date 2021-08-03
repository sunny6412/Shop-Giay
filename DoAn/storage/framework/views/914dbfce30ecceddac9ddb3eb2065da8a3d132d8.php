<div class="recommended_items">
    <h2 class="title text-center">Sản phẩm đề xuất</h2>
    
    <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            	

                <?php $__currentLoopData = $sql; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $keyRecommend => $productRecommendItem): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        
                <?php if($keyRecommend % 3 == 0): ?>
                     <div class="item <?php echo e($keyRecommend == 0 ? 'active' : ''); ?>">
                <?php endif; ?>
               
                <div class="col-sm-4">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <a href="<?php echo e(route('productDetail',['id' => $productRecommendItem->id])); ?>"><img src="<?php echo e($productRecommendItem->feature_image_path); ?>" alt="" /></a>
                                <h2><?php echo e(number_format($productRecommendItem->price)); ?> VNĐ</h2>
                                <p><?php echo e($productRecommendItem->name); ?></p>
                                <a data-url="<?php echo e(route('giohang.add',['id' => $productRecommendItem->id])); ?>" class="btn btn-default add-to-cart add_to_cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <?php if($keyRecommend % 3 == 2): ?>
                         </div>
                <?php endif; ?>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                
        </div>
         <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
            <i class="fa fa-angle-left"></i>
          </a>
          <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
            <i class="fa fa-angle-right"></i>
          </a>			
    </div>
</div><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/DoAn/resources/views/fontend/components/recommend_product.blade.php ENDPATH**/ ?>