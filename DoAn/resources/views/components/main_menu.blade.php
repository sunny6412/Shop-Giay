<div class="mainmenu pull-left">
    <ul class="nav navbar-nav collapse navbar-collapse">
        <li><a href="{{route('Homeindex')}}" class="active">Home</a></li>

        @foreach ($categoryList as $categoryParent)

        <li class="dropdown"><a href="#">{{$categoryParent->name}}<i class="fa fa-angle-down"></i></a>
           @if ($categoryParent->categoryChildrent->count())
               
           @endif
            <ul role="menu" class="sub-menu">
               
               @foreach ($categoryParent->categoryChildrent as $item)
               <li>
                    <a

                    href="{{route('category.product',['slug' => $item->slug, 'id' => $item->id])}}">{{$item->name}}
                
                    </a>
                </li>
               @endforeach

            </ul>

        </li> 
        @endforeach
        



        {{-- <li class="dropdown"><a href="#">Blog<i class="fa fa-angle-down"></i></a>
            <ul role="menu" class="sub-menu">
                <li><a href="blog.html">Blog List</a></li>
                <li><a href="blog-single.html">Blog Single</a></li>
            </ul>
        </li>  --}}
        {{-- <li><a href="404.html">404</a></li> --}}
        {{-- <li><a href="contact-us.html">Liên hệ</a></li> --}}
    </ul>
</div>