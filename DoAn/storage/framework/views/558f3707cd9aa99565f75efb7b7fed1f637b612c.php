<?php
session_start();
?>

<header id="header"><!--header-->
   
    
    <div class="header-middle"><!--header-middle-->
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="logo pull-left">
                        <a href="<?php echo e(route('Homeindex')); ?>"><img src="<?php echo e(asset('img/logo.png')); ?>" alt="" /></a>
                    </div>
                    
                </div>
                <div class="col-sm-8">
                    <div class="shop-menu pull-right">
                        <ul class="nav navbar-nav">
                        <li><a href="<?php echo e(route('giohang.show')); ?>"><i class="fa fa-shopping-cart"></i> Cart</a></li>
                            <?php
                                if(auth()->user()){
                            ?>

                            <li><a href="<?php echo e(route('admin.login')); ?>"><i class="fa fa-lock"></i> <?php echo (auth()->user()->name);?></a></li>
                            <li><a href="<?php echo e(route('admin.logout')); ?>"><i class="fa fa-sign-out"></i>Logout</a></li>
                            <?php
                                } else {
                            ?>
                            <li><a href="<?php echo e(route('admin.login')); ?>"><i class="fa fa-lock"></i> Login</a></li>
                            <?php
                                }
                            ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-middle-->

    <div class="header-bottom"><!--header-bottom-->
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                   
                    <?php echo $__env->make('components.main_menu', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>
                
            </div>
        </div>
    </div><!--/header-bottom-->
</header><!--/header--><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/DoAn/resources/views/components/header.blade.php ENDPATH**/ ?>