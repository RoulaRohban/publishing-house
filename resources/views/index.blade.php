@extends('layouts.app')
@section('content')
    <section class="hero-area hero-slider-1">
        <div class="sb-slick-slider" data-slick-setting='{
                            "autoplay": true,
                            "fade": true,
                            "autoplaySpeed": 3000,
                            "speed": 3000,
                            "slidesToShow": 1,
                            "dots":true
                            }'>
            <div class="single-slide bg-shade-whisper  ">
                <div class="container">
                    <div class="home-content text-center text-sm-left position-relative">
                        <div class="hero-partial-image image-right">
                            <img src="ourFiles/books-school-desk-class_23-2148204795.jpg" alt="">
                        </div>
                        <div class="row no-gutters ">
                            <div class="col-xl-6 col-md-6 col-sm-7">
                                <div class="home-content-inner content-left-side">
                                    <h1>Books Warehouse<br></h1>
                                    <h2>Cover Up Front Of Books and Leave Summary</h2>
                                    <a href="shop-grid.html" class="btn btn-outlined--primary">Order Now!</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-slide bg-ghost-white">
                <div class="container">
                    <div class="home-content text-center text-sm-left position-relative">
                        <div class="hero-partial-image image-left">
                            <img src="image/bg-images/home-slider-1-ai.png" alt="">
                        </div>
                        <div class="row align-items-center justify-content-start justify-content-md-end">
                            <div class="col-lg-6 col-xl-7 col-md-6 col-sm-7">
                                <div class="home-content-inner content-right-side">
                                    <h1>Books Warehouse</h1>
                                    <h2>Cover Up Front Of Books and Leave Summary</h2>
                                    <a href="shop-grid.html" class="btn btn-outlined--primary">Learn More
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--=================================
    Home Features Section
    Home Slider Tab
    ===================================== -->
    <section class="section-padding">
        <h2 class="sr-only">Home Tab Slider Section</h2>
        <div class="container">
            <div class="sb-custom-tab">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="shop-tab" data-toggle="tab" href="#shop" role="tab"
                           aria-controls="shop" aria-selected="true">
                            Featured Products
                        </a>
                        <span class="arrow-icon"></span>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="men-tab" data-toggle="tab" href="#men" role="tab"
                           aria-controls="men" aria-selected="true">
                            New Arrivals
                        </a>
                        <span class="arrow-icon"></span>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="woman-tab" data-toggle="tab" href="#woman" role="tab"
                           aria-controls="woman" aria-selected="false">
                            Most view products
                        </a>
                        <span class="arrow-icon"></span>
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane show active" id="shop" role="tabpanel" aria-labelledby="shop-tab">
                        <div class="product-slider multiple-row  slider-border-multiple-row  sb-slick-slider"
                             data-slick-setting='{
                            "autoplay": true,
                            "autoplaySpeed": 8000,
                            "slidesToShow": 5,
                            "rows":2,
                            "dots":true
                        }' data-slick-responsive='[
                            {"breakpoint":1200, "settings": {"slidesToShow": 3} },
                            {"breakpoint":768, "settings": {"slidesToShow": 2} },
                            {"breakpoint":480, "settings": {"slidesToShow": 1} },
                            {"breakpoint":320, "settings": {"slidesToShow": 1} }
                        ]'>
                            @foreach($products as $product)
                            <div class="single-slide">
                                <div class="product-card">
                                    <div class="product-header">
                                        <a href="#" class="author">
                                            {{ $product->author->name ?? 'Author' }}
                                        </a>
                                        <h3><a href="{{ route('products.show',$product->id) }}" style="margin-bottom: 0px;">
                                                {{ $product->title }}</a></h3>
                                    </div>
                                    <div class="product-card--body">
                                        <div class="card-image">
                                            <img src="{{ $product->image_url }}" alt="not found image">
                                            <div class="hover-contents">
                                                <a href="{{ route('products.show',$product->id) }}" class="hover-image">
                                                    <img src="{{ $product->image_url }}" alt="">
                                                </a>
                                                <div class="hover-btns">
                                                    <a href="cart.html" class="single-btn">
                                                        <i class="fas fa-shopping-basket"></i>
                                                    </a>
                                                    <a href="wishlist.html" class="single-btn">
                                                        <i class="fas fa-heart"></i>
                                                    </a>
                                                    <a href="#" data-toggle="modal" data-target="#quickModal"
                                                       class="single-btn">
                                                        <i class="fas fa-eye"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="price-block">
                                            <span class="price">{{ $product->price }} S.P</span>
{{--                                            <del class="price-old">£51.20</del>--}}
{{--                                            <span class="price-discount">20%</span>--}}
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                    <div class="tab-pane" id="men" role="tabpanel" aria-labelledby="men-tab">
                        <div class="product-slider multiple-row  slider-border-multiple-row  sb-slick-slider"
                             data-slick-setting='{
                                        "autoplay": true,
                                        "autoplaySpeed": 8000,
                                        "slidesToShow": 5,
                                        "rows":2,
                                        "dots":true
                                    }' data-slick-responsive='[
                                        {"breakpoint":1200, "settings": {"slidesToShow": 3} },
                                        {"breakpoint":768, "settings": {"slidesToShow": 2} },
                                        {"breakpoint":480, "settings": {"slidesToShow": 1} },
                                        {"breakpoint":320, "settings": {"slidesToShow": 1} }
                                    ]'>
                            @foreach($products as $product)
                            <div class="single-slide">
                                <div class="product-card">
                                    <div class="product-header">
                                        <a href="#" class="author">
                                            {{ $product->author->name ?? 'Author' }}
                                        </a>
                                        <h3><a href="{{ route('products.show',$product->id) }}">{{ $product->title }}</a></h3>
                                    </div>
                                    <div class="product-card--body">
                                        <div class="card-image">
                                            <img src="{{ $product->image_url }}" alt="">
                                            <div class="hover-contents">
                                                <a href="{{ route('products.show',$product->id) }}" class="hover-image">
                                                    <img src="{{ $product->image_url }}" alt="">
                                                </a>
                                                <div class="hover-btns">
                                                    <a href="cart.html" class="single-btn">
                                                        <i class="fas fa-shopping-basket"></i>
                                                    </a>
                                                    <a href="wishlist.html" class="single-btn">
                                                        <i class="fas fa-heart"></i>
                                                    </a>
                                                    <a href="#" data-toggle="modal" data-target="#quickModal"
                                                       class="single-btn">
                                                        <i class="fas fa-eye"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="price-block">
                                            <span class="price">{{ $product->price }} S.P</span>
{{--                                            <del class="price-old">£51.20</del>--}}
{{--                                            <span class="price-discount">20%</span>--}}
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                    <div class="tab-pane" id="woman" role="tabpanel" aria-labelledby="woman-tab">
                        <div class="product-slider multiple-row  slider-border-multiple-row  sb-slick-slider"
                             data-slick-setting='{
                                        "autoplay": true,
                                        "autoplaySpeed": 8000,
                                        "slidesToShow": 5,
                                        "rows":2,
                                        "dots":true
                                    }' data-slick-responsive='[
                                        {"breakpoint":1200, "settings": {"slidesToShow": 3} },
                                        {"breakpoint":768, "settings": {"slidesToShow": 2} },
                                        {"breakpoint":480, "settings": {"slidesToShow": 1} },
                                        {"breakpoint":320, "settings": {"slidesToShow": 1} }
                                    ]'>
                            @foreach($products as $product)
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="#" class="author">
                                                {{ $product->author->name ?? 'Author' }}
                                            </a>
                                            <h3><a href="href="{{ route('products.show',$product->id) }}"">{{ $product->title }}</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="{{ $product->image_url }}" alt="">
                                                <div class="hover-contents">
                                                    <a href="{{ route('products.show',$product->id) }}" class="hover-image">
                                                        <img src="{{ $product->image_url }}" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart.html" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                           class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">{{ $product->price }} S.P</span>
                                                {{--                                            <del class="price-old">£51.20</del>--}}
                                                {{--                                            <span class="price-discount">20%</span>--}}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--=================================
    Deal of the day
    ===================================== -->
    <section class="section-margin">
        <div class="container-fluid">
            <div class="promo-section-heading">
                <h2>Deal of the day up to 20% off Special offer</h2>
            </div>
            <div class="product-slider with-countdown  slider-border-single-row sb-slick-slider" data-slick-setting='{
                "autoplay": true,
                "autoplaySpeed": 8000,
                "slidesToShow": 6,
                "dots":true
            }' data-slick-responsive='[
                {"breakpoint":1400, "settings": {"slidesToShow": 4} },
                {"breakpoint":992, "settings": {"slidesToShow": 3} },
                {"breakpoint":768, "settings": {"slidesToShow": 2} },
                {"breakpoint":575, "settings": {"slidesToShow": 2} },
                {"breakpoint":490, "settings": {"slidesToShow": 1} }
            ]'>
                @foreach($products_discount as $product)
                    <div class="single-slide">
                        <div class="product-card">
                            <div class="product-header">
                                <a href="#" class="author">
                                    {{ $product->author->name ?? 'Author' }}
                                </a>
                                <h3><a href="{{ route('products.show',$product->id) }}">{{ $product->title }}</a></h3>
                            </div>
                            <div class="product-card--body">
                                <div class="card-image">
                                    <img src="{{ $product->image_url }}" alt="">
                                    <div class="hover-contents">
                                        <a href="{{ route('products.show',$product->id) }}" class="hover-image">
                                            <img src="{{ $product->image_url }}" alt="">
                                        </a>
                                        <div class="hover-btns">
                                            <a href="cart.html" class="single-btn">
                                                <i class="fas fa-shopping-basket"></i>
                                            </a>
                                            <a href="wishlist.html" class="single-btn">
                                                <i class="fas fa-heart"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#quickModal"
                                               class="single-btn">
                                                <i class="fas fa-eye"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="price-block">
                                    <span class="price">{{ $product->price * 0.2 }} S.P</span>
                                    <del class="price-old">{{ $product->price }} S.P</del>
                                    <span class="price-discount">20%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>
    <!--=================================
    Best Seller Product
    ===================================== -->
    <section class="section-margin bg-image section-padding-top section-padding"
             data-bg="image/bg-images/best-seller-bg.jpg">
        <div class="container">
            <div class="section-title section-title--bordered mb-0">
                <h2>BEST SELLER BOOKS</h2>
            </div>
            <div class="best-seller-block">
                <div class="row align-items-center">
                    <div class="col-lg-5 col-md-6">
                        <div class="author-image">
                            <img src="image/wiliam.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-6">
                        <div class="sb-slick-slider product-slider product-list-slider multiple-row slider-border-multiple-row"
                             data-slick-setting='{
                                    "autoplay": false,
                                    "autoplaySpeed": 8000,
                                    "slidesToShow":2,
                                    "rows":2,
                                    "dots":true
                                }' data-slick-responsive='[
                                    {"breakpoint":1200, "settings": {"slidesToShow": 1} },
                                    {"breakpoint":992, "settings": {"slidesToShow": 1} },
                                    {"breakpoint":768, "settings": {"slidesToShow": 1} },
                                    {"breakpoint":575, "settings": {"slidesToShow": 1} },
                                    {"breakpoint":490, "settings": {"slidesToShow": 1} }
                                ]'>
                            @foreach($products_sell as $product)
                            <div class="single-slide">
                                <div class="product-card card-style-list">
                                    <div class="card-image">
                                        <img src="{{ $product->image_url }}" alt="">
                                    </div>
                                    <div class="product-card--body">
                                        <div class="product-header">
                                            <a href="#" class="author">
                                                {{ $product->author->name ?? 'Author' }}
                                            </a>
                                            <h3><a href="{{ route('products.show',$product->id) }}">
                                                    {{ $product->title }}
                                                </a></h3>
                                        </div>
                                        <div class="price-block">
                                            <span class="price">{{ $product->price * 0.2 }} S.P</span>
                                            <del class="price-old">{{ $product->price }} S.P</del>
                                            <span class="price-discount">20%</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--=================================
    CHILDREN’S BOOKS
    ===================================== -->
    <section class="section-margin">
        <div class="container">
            <div class="section-title section-title--bordered">
                <h2>CHILDREN’S BOOKS</h2>
            </div>
            <div class="product-list-slider slider-two-column product-slider multiple-row sb-slick-slider slider-border-multiple-row"
                 data-slick-setting='{
                                            "autoplay": true,
                                            "autoplaySpeed": 8000,
                                            "slidesToShow":3,
                                            "rows":2,
                                            "dots":true
                                        }' data-slick-responsive='[
                                            {"breakpoint":1200, "settings": {"slidesToShow": 2} },
                                            {"breakpoint":992, "settings": {"slidesToShow": 2} },
                                            {"breakpoint":768, "settings": {"slidesToShow": 1} },
                                            {"breakpoint":575, "settings": {"slidesToShow": 1} },
                                            {"breakpoint":490, "settings": {"slidesToShow": 1} }
                                        ]'>
                @foreach($children_books as $product)
                <div class="single-slide">
                    <div class="product-card card-style-list">
                        <div class="card-image">
                            <img src="{{ $product->image_url }}" alt="">
                        </div>
                        <div class="product-card--body">
                            <div class="product-header">
                                <a href="#" class="author">
                                    {{ $product->author->name ?? 'Author' }}
                                </a>
                                <h3><a href="{{ route('products.show',$product->id) }}">{{ $product->title }}</a></h3>
                            </div>
                            <div class="price-block">
                                <span class="price">{{ $product->price }}</span>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>
    <!--=================================
    ARTS & PHOTOGRAPHY BOOKS
    ===================================== -->
    <section class="section-margin">
        <div class="container">
            <div class="section-title section-title--bordered">
                <h2>Religious BOOKS</h2>
            </div>
            <div class="product-slider sb-slick-slider slider-border-single-row" data-slick-setting='{
                "autoplay": true,
                "autoplaySpeed": 8000,
                "slidesToShow": 5,
                "dots":true
            }' data-slick-responsive='[
                {"breakpoint":1500, "settings": {"slidesToShow": 4} },
                {"breakpoint":992, "settings": {"slidesToShow": 3} },
                {"breakpoint":768, "settings": {"slidesToShow": 2} },
                {"breakpoint":480, "settings": {"slidesToShow": 1} },
                {"breakpoint":320, "settings": {"slidesToShow": 1} }
            ]'>
                @foreach($religious_books as $product)
                <div class="single-slide">
                    <div class="product-card">
                        <div class="product-header">
                            <a href="#" class="author">
                                {{ $product->author->name ?? 'Author' }}
                            </a>
                            <h3><a href="{{ route('products.show',$product->id) }}">{{ $product->title }}
                                </a></h3>
                        </div>
                        <div class="product-card--body">
                            <div class="card-image">
                                <img src="{{ $product->image_url }}" alt="">
                                <div class="hover-contents">
                                    <a href="{{ route('products.show',$product->id) }}" class="hover-image">
                                        <img src="{{ $product->image_url }}" alt="">
                                    </a>
                                    <div class="hover-btns">
                                        <a href="cart.html" class="single-btn">
                                            <i class="fas fa-shopping-basket"></i>
                                        </a>
                                        <a href="wishlist.html" class="single-btn">
                                            <i class="fas fa-heart"></i>
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                           class="single-btn">
                                            <i class="fas fa-eye"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="price-block">
                                <span class="price">{{ $product->price }} S.P</span>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>
    <!--=================================
        Promotion Section Three
    ===================================== -->
    <section class="section-margin">
        <div class="promo-wrapper promo-type-three">
            <a href="#" class="promo-image promo-overlay bg-image" data-bg="image/bg-images/promo-banner-full.jpg">
            </a>
            <div class="promo-text w-100 ml-0">
                <div class="container">
                    <div class="row w-100">
                        <div class="col-lg-7">
                            <h2> “A reader lives a thousand lives before he dies”</h2>
                            <h3>– George R.R. Martin</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--=================================
    Home Blog Slider
    ===================================== -->
    <!--=================================
    Home Blog
    ===================================== -->
    <section class="section-margin">
        <div class="container">
            <div class="section-title">
                <h2>LATEST BLOGS</h2>
            </div>
            <div class="blog-slider sb-slick-slider" data-slick-setting='{
                "autoplay": true,
                "autoplaySpeed": 8000,
                "slidesToShow": 2,
                "dots": true
            }' data-slick-responsive='[
                {"breakpoint":1200, "settings": {"slidesToShow": 1} }
            ]'>
                @foreach($blogs as $blog)
                <div class="single-slide">
                    <div class="blog-card">
                        <div class="image">
                            <img src="{{ $blog->image_url }}" alt="">
                        </div>
                        <div class="content">
                            <div class="content-header">
                                <div class="date-badge">
                                        <span class="date">
                                            {{ $blog->created_at->format('d') }}
                                        </span>
                                    <span class="month">
                                            {{ $blog->created_at->format('M') }}
                                        </span>
                                </div>
                                <h3 class="title"><a href="{{ route('blogs.show',$blog->id) }}">{{ $blog->title }}</a>
                                </h3>
                            </div>
                            <p class="meta-para"><i class="fas fa-user-edit"></i>Post by <a href="#">Admin</a></p>
                            <article class="blog-paragraph">
                                <h2 class="sr-only">blog-paragraph</h2>
                                <p>{{ $blog->description }}</p>
                            </article>
                            <a href="{{ route('blogs.show',$blog->id) }}" class="card-link">Read More <i
                                    class="fas fa-chevron-circle-right"></i></a>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>
    <!--=================================
    Footer
    ===================================== -->
    <!-- Modal -->
    <div class="modal fade modal-quick-view" id="quickModal" tabindex="-1" role="dialog"
         aria-labelledby="quickModal" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <button type="button" class="close modal-close-btn ml-auto" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <div class="product-details-modal">
                    <div class="row">
                        <div class="col-lg-5">
                            <!-- Product Details Slider Big Image-->
                            <div class="product-details-slider sb-slick-slider arrow-type-two" data-slick-setting='{
              "slidesToShow": 1,
              "arrows": false,
              "fade": true,
              "draggable": false,
              "swipe": false,
              "asNavFor": ".product-slider-nav"
              }'>
                                <div class="single-slide">
                                    <img src="image/products/product-details-1.jpg" alt="">
                                </div>
                                <div class="single-slide">
                                    <img src="image/products/product-details-2.jpg" alt="">
                                </div>
                                <div class="single-slide">
                                    <img src="image/products/product-details-3.jpg" alt="">
                                </div>
                                <div class="single-slide">
                                    <img src="image/products/product-details-4.jpg" alt="">
                                </div>
                                <div class="single-slide">
                                    <img src="image/products/product-details-5.jpg" alt="">
                                </div>
                            </div>
                            <!-- Product Details Slider Nav -->
                            <div class="mt--30 product-slider-nav sb-slick-slider arrow-type-two"
                                 data-slick-setting='{
            "infinite":true,
              "autoplay": true,
              "autoplaySpeed": 8000,
              "slidesToShow": 4,
              "arrows": true,
              "prevArrow":{"buttonClass": "slick-prev","iconClass":"fa fa-chevron-left"},
              "nextArrow":{"buttonClass": "slick-next","iconClass":"fa fa-chevron-right"},
              "asNavFor": ".product-details-slider",
              "focusOnSelect": true
              }'>
                                <div class="single-slide">
                                    <img src="image/products/product-details-1.jpg" alt="">
                                </div>
                                <div class="single-slide">
                                    <img src="image/products/product-details-2.jpg" alt="">
                                </div>
                                <div class="single-slide">
                                    <img src="image/products/product-details-3.jpg" alt="">
                                </div>
                                <div class="single-slide">
                                    <img src="image/products/product-details-4.jpg" alt="">
                                </div>
                                <div class="single-slide">
                                    <img src="image/products/product-details-5.jpg" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7 mt--30 mt-lg--30">
                            <div class="product-details-info pl-lg--30 ">
                                <p class="tag-block">Tags: <a href="#">Movado</a>, <a href="#">Omega</a></p>
                                <h3 class="product-title">Beats EP Wired On-Ear Headphone-Black</h3>
                                <ul class="list-unstyled">
                                    <li>Ex Tax: <span class="list-value"> £60.24</span></li>
                                    <li>Brands: <a href="#" class="list-value font-weight-bold"> Canon</a></li>
                                    <li>Product Code: <span class="list-value"> model1</span></li>
                                    <li>Reward Points: <span class="list-value"> 200</span></li>
                                    <li>Availability: <span class="list-value"> In Stock</span></li>
                                </ul>
                                <div class="price-block">
                                    <span class="price-new">£73.79</span>
                                    <del class="price-old">£91.86</del>
                                </div>
                                <div class="rating-widget">
                                    <div class="rating-block">
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star "></span>
                                    </div>
                                    <div class="review-widget">
                                        <a href="#">(1 Reviews)</a> <span>|</span>
                                        <a href="#">Write a review</a>
                                    </div>
                                </div>
                                <article class="product-details-article">
                                    <h4 class="sr-only">Product Summery</h4>
                                    <p>Long printed dress with thin adjustable straps. V-neckline and wiring under
                                        the Dust with ruffles
                                        at the bottom
                                        of the
                                        dress.</p>
                                </article>
                                <div class="add-to-cart-row">
                                    <div class="count-input-block">
                                        <span class="widget-label">Qty</span>
                                        <input type="number" class="form-control text-center" value="1">
                                    </div>
                                    <div class="add-cart-btn">
                                        <a href="#" class="btn btn-outlined--primary"><span
                                                class="plus-icon">+</span>Add to Cart</a>
                                    </div>
                                </div>
                                <div class="compare-wishlist-row">
                                    <a href="#" class="add-link"><i class="fas fa-heart"></i>Add to Wish List</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="widget-social-share">
                        <span class="widget-label">Share:</span>
                        <div class="modal-social-share">
                            <a href="#" class="single-icon"><i class="fab fa-facebook-f"></i></a>
                            <a href="#" class="single-icon"><i class="fab fa-twitter"></i></a>
                            <a href="#" class="single-icon"><i class="fab fa-youtube"></i></a>
                            <a href="#" class="single-icon"><i class="fab fa-google-plus-g"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
