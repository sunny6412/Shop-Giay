<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <?php echo $__env->yieldContent('title'); ?>
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href=" <?php echo e(asset('adminlte/adminlte/plugins/fontawesome-free/css/all.min.css')); ?>">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?php echo e(asset('adminlte/adminlte/dist/css/adminlte.min.css')); ?>">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <?php echo $__env->yieldContent('css'); ?>
</head>

<body class="hold-transition sidebar-mini">
    <div class="wrapper">
        <?php echo $__env->make('partials.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>;
        <?php echo $__env->make('partials.siderbar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>;

        <?php echo $__env->yieldContent('content'); ?>;

        <?php echo $__env->make('partials.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>;
    </div>

    <!-- jQuery -->
    <script src=" <?php echo e(asset('adminlte/adminlte/plugins/jquery/jquery.min.js')); ?>"></script>
    <!-- Bootstrap 4 -->
    <script src=" <?php echo e(asset('adminlte/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js')); ?>"></script>
    <!-- AdminLTE App -->
    <script src=" <?php echo e(asset('adminlte/adminlte/dist/js/adminlte.min.js')); ?>"></script>
    <?php echo $__env->yieldContent('js'); ?>;
</body>

</html><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/DoAn/resources/views/layouts/admin.blade.php ENDPATH**/ ?>