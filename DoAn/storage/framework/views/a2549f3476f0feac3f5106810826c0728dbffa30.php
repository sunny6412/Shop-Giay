<div class="mainmenu pull-left">
    <ul class="nav navbar-nav collapse navbar-collapse">
        <li><a href="<?php echo e(route('Homeindex')); ?>" class="active">Home</a></li>

        <?php $__currentLoopData = $categoryList; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $categoryParent): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

        <li class="dropdown"><a href="#"><?php echo e($categoryParent->name); ?><i class="fa fa-angle-down"></i></a>
           <?php if($categoryParent->categoryChildrent->count()): ?>
               
           <?php endif; ?>
            <ul role="menu" class="sub-menu">
               
               <?php $__currentLoopData = $categoryParent->categoryChildrent; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
               <li>
                    <a

                    href="<?php echo e(route('category.product',['slug' => $item->slug, 'id' => $item->id])); ?>"><?php echo e($item->name); ?>

                
                    </a>
                </li>
               <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </ul>

        </li> 
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        



        
        
        
    </ul>
</div><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/DoAn/resources/views/components/main_menu.blade.php ENDPATH**/ ?>