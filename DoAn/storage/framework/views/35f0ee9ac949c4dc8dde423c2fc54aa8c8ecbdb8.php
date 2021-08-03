<div class="col-sm-3">
    <div class="left-sidebar">
        <h2>Category</h2>
        <div class="panel-group category-products" id="accordian"><!--category-productsr-->
           
            <?php $__currentLoopData = $category; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordian" href="#sportswear_<?php echo e($item->id); ?>">
                            <span class="badge pull-right">
                                <?php if($item->categoryChildrent->count()): ?>
                                <i class="fa fa-plus"></i>
                                <?php endif; ?>                           
                            </span>
                            <?php echo e($item->name); ?>

                        </a>
                    </h4>
                </div>
                <div id="sportswear_<?php echo e($item->id); ?>" class="panel-collapse collapse">
                    <div class="panel-body">
                        <ul>
                            <?php $__currentLoopData = $item->categoryChildrent; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $categoryChilrent): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <li>

                                <a href="<?php echo e(route('category.product',['slug' => $categoryChilrent->slug,'id' => $categoryChilrent->id])); ?>">                               
                                        <?php echo e($categoryChilrent->name); ?> 
                                </a>

                            </li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </ul>
                    </div>
                </div>
            </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

        </div><!--/category-products-->
    
    
    </div>
</div><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/DoAn/resources/views/components/sliderbar.blade.php ENDPATH**/ ?>