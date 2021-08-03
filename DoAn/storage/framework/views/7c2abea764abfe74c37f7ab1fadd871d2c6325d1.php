<html>
    <head>          
             <meta charset="utf-8">
             <meta name="viewport" content="width=device-width, initial-scale=1.0">
             <meta name="description" content="">
             <meta name="author" content="">
             <?php echo $__env->yieldContent('title'); ?> 
             <title>Home | E-Shopper</title>
             <link href="<?php echo e(asset('Eshopper/css/bootstrap.min.css')); ?>" rel="stylesheet">
             <link href="<?php echo e(asset('Eshopper/css/font-awesome.min.css')); ?>" rel="stylesheet">
             <link href="<?php echo e(asset('Eshopper/css/prettyPhoto.css')); ?>" rel="stylesheet">
             <link href="<?php echo e(asset('Eshopper/css/price-range.css')); ?>" rel="stylesheet">
             <link href="<?php echo e(asset('Eshopper/css/animate.css')); ?>" rel="stylesheet">
             <link href="<?php echo e(asset('Eshopper/css/main.css')); ?>" rel="stylesheet">

             
             <?php echo $__env->yieldContent('css'); ?>
    </head>
    <body>
        <?php echo $__env->make('components.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

            <?php echo $__env->yieldContent('content'); ?>

        <?php echo $__env->make('components.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>


        <script src="<?php echo e(asset('Eshopper/js/jquery.js')); ?>"></script>
        <script src="<?php echo e(asset('Eshopper/js/bootstrap.min.js')); ?>"></script>
        <script src="<?php echo e(asset('Eshopper/js/jquery.scrollUp.min.js')); ?>"></script>
        <script src="<?php echo e(asset('Eshopper/js/price-range.js')); ?>"></script>
        <script src="<?php echo e(asset('Eshopper/js/jquery.prettyPhoto.js')); ?>"></script>
        <script src="<?php echo e(asset('Eshopper/js/main.js')); ?>"></script>

        <?php echo $__env->yieldContent('js'); ?>
    </body>

    <script>
        function addToCart(event){
           event.preventDefault();
           let urlCart = $(this).data('url');
           $.ajax({
               type: "GET",
               url: urlCart,
               dataType: 'json',
               success: function (data) {
                   if(data.code === 200){
                       alert('Thêm sản phẩm vào giỏ hàng thành công');
                   }
               },
               error: function(){

               }
           });
        }
        $(function(){
            $('.add_to_cart').on('click',addToCart);
        });
    </script>

    <script >
        function update_cart(event){
            event.preventDefault();
            let urlUpdateCart = $('.update_cart_url').data('url');
            let id = $(this).data('id');
            let quantity = $(this).parents('tr').find('input').val();
            $.ajax({
               type: "GET",
               url: urlUpdateCart,
               data: {id: id, quantity: quantity},
               success: function (data) {
                   if(data.code === 200){
                       alert("Cập nhật giỏ hàng thành công");
                       location.reload();
                   }
               },
               error: function(){
                
               }
           });
            
        }

        function remove_from_cart(event){
            // event.preventDefault();
            let urldelete = $('.urldelete').data('url');
            let id = $(this).data('id');
            $.ajax({
               type: "GET",
               url: urldelete,
               data: {id: id},
               success: function (data) {
                if(data.code === 200){
                      alert("Xóa giỏ hàng thành công");
                    //   location.reload();
                  }
               },
               error: function(){

               }
           });
            
        }

        $(function(){
            $('.update-cart').on('click',update_cart);
            $('.remove-from-cart').on('click',remove_from_cart);
        });
    </script>
        
</html><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/DoAn/resources/views/fontlayouts/master.blade.php ENDPATH**/ ?>