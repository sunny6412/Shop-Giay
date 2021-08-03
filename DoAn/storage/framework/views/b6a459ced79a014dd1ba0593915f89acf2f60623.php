


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




    <section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="#">Home</a></li>
				  <li class="active">Shopping Cart</li>
				</ol>

			</div>
            <div class="table-responsive cart_info urldelete" data-url="<?php echo e(route('giohang.delete')); ?>">
                <table class="table table-condensed update_cart_url" data-url="<?php echo e(route('giohang.update')); ?>">
                    <thead>
                        <tr class="cart_menu">
                            <td class="image">Hình ảnh</td>
                            <td class="description">Tên sản phẩm</td>
                            <td class="price">Giá tiền</td>
                            <td class="quantity">Số lượng</td>
                            <td class="total">Tổng giá tiền</td>
                            <td>Action</td>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $total = 0;
                        ?>
                        <?php $__currentLoopData = $carts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php
                            $total += $item['price'] * $item['quantity'];
                        ?>
                        <tr>
                            <td class="cart_product">
                               <img style="width: 100px; height: 100px;"  src="<?php echo e($item['image']); ?>" alt="">
                            </td>
                            <td class="cart_description">
                                <h4><?php echo e($item['name']); ?></h4>
                            </td>
                            <td class="cart_price">
                                <p><?php echo e(number_format($item['price'])); ?></p>
                            </td>
                            <td class="cart_quantity">
                                <div class="cart_quantity_button">
                                    <input class="cart_quantity_input" type="number" min="1" value="<?php echo e($item['quantity']); ?>">
                                </div>
                            </td>
                            <td class="cart_total">
                                <p class="cart_total_price"><?php echo e(number_format($item['price'] * $item['quantity'])); ?></p>
                            </td>
                            <td>
                                <a href="" class="btn btn-danger update-cart" data-id="<?php echo e($key); ?>">Update</a>
                                <a href="" class="btn btn-success remove-from-cart" data-id="<?php echo e($key); ?>">Delete</a>
                            </td>
                        </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            
                     
            
            
                    </tbody>
                </table>
                <div class="col-md-10">
                    <h2>Tổng thanh toán: <?php echo e(number_format($total)); ?> VNĐ</h2>
                </div>

                    <div class="col-md-2 btn btn-success" >
                        <a href="<?php echo e(route('giohang.thanhtoan')); ?>" style="color: white">Thanh toán</a>
                    </div>
            </div>
		</div>
	</section>


<?php $__env->stopSection(); ?>








	



<?php echo $__env->make('fontlayouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/DoAn/resources/views/products/cart/giohang.blade.php ENDPATH**/ ?>