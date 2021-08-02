<html>
    <head>          
             <meta charset="utf-8">
             <meta name="viewport" content="width=device-width, initial-scale=1.0">
             <meta name="description" content="">
             <meta name="author" content="">
             @yield('title') 
             <title>Home | E-Shopper</title>
             <link href="{{asset('Eshopper/css/bootstrap.min.css')}}" rel="stylesheet">
             <link href="{{asset('Eshopper/css/font-awesome.min.css')}}" rel="stylesheet">
             <link href="{{asset('Eshopper/css/prettyPhoto.css')}}" rel="stylesheet">
             <link href="{{asset('Eshopper/css/price-range.css')}}" rel="stylesheet">
             <link href="{{asset('Eshopper/css/animate.css')}}" rel="stylesheet">
             <link href="{{asset('Eshopper/css/main.css')}}" rel="stylesheet">

             {{-- <link rel="shortcut icon" href="/Eshopper/images/ico/favicon.ico">
             <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/Eshopper/images/ico/apple-touch-icon-144-precomposed.png">
             <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/Eshopper/images/ico/apple-touch-icon-114-precomposed.png">
             <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/Eshopper/images/ico/apple-touch-icon-72-precomposed.png">
             <link rel="apple-touch-icon-precomposed" href="/Eshopper/images/ico/apple-touch-icon-57-precomposed.png"> --}}
             @yield('css')
    </head>
    <body>
        @include('components.header')

            @yield('content')

        @include('components.footer')


        <script src="{{asset('Eshopper/js/jquery.js')}}"></script>
        <script src="{{asset('Eshopper/js/bootstrap.min.js')}}"></script>
        <script src="{{asset('Eshopper/js/jquery.scrollUp.min.js')}}"></script>
        <script src="{{asset('Eshopper/js/price-range.js')}}"></script>
        <script src="{{asset('Eshopper/js/jquery.prettyPhoto.js')}}"></script>
        <script src="{{asset('Eshopper/js/main.js')}}"></script>

        @yield('js')
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
        
</html>