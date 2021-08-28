@extends('layouts.app')
@section('content')
    <section class="breadcrumb-section">
        <h2 class="sr-only">Site Breadcrumb</h2>
        <div class="container">
            <div class="breadcrumb-contents">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item active">Product Details</li>
                    </ol>
                </nav>
            </div>
        </div>
    </section>
    <main class="inner-page-sec-padding-bottom">
        <div class="container">
            <div class="row  mb--60">
                <div class="col-lg-5 mb--30">
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
                            <img src="{{ asset($product->image_url) }}" alt="">
                        </div>
                    </div>
                    <!-- Product Details Slider Nav -->
                    <div class="mt--30 product-slider-nav sb-slick-slider arrow-type-two" data-slick-setting='{
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
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="product-details-info pl-lg--30 ">
                        <h3 class="product-title">{{ $product->title }}</h3>
                        <ul class="list-unstyled">
                            <li>Type: <a href="#" class="list-value font-weight-bold">{{ $product->type }} </a></li><br>
                            <li>Author: <span class="list-value"> {{ $product->author->name ?? '---' }}</span></li><br>
                            <li>Category: <span class="list-value"> {{ $product->category->name ?? '---' }}</span></li><br>
                            <li>Availability: <span class="list-value"> {{ $product->status }}</span></li><br>
                        </ul>
                        <div class="price-block">
                            <span class="price-new">{{ $product->price * 0.2 }} S.P</span>
                            <del class="price-old">{{ $product->price }} S.P</del>
                        </div>
                        <article class="product-details-article">
                            <h4 class="sr-only">Product Summery</h4>
                            <p>{{ $product->author->abstract ?? '---' }}</p>
                        </article>
                        <div class="add-to-cart-row">
{{--                            <div class="count-input-block">--}}
{{--                                <span class="widget-label">Qty</span>--}}
{{--                                <input type="number" class="form-control text-center" value="1">--}}
{{--                            </div>--}}
                            <div class="add-cart-btn">
                                <a onclick="orderProduct('{{ route('order.store', $product->id) }}')" class="btn btn-outlined--primary"><span class="plus-icon">+</span>Reserve It!</a>
                            </div>
                        </div>
                        <div class="compare-wishlist-row">
                            <a onclick="toggleFavourite('{{ route('wishlist.store', $product->id) }}')" class="add-link"><i class="fas fa-heart"></i>Add to Wish List</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sb-custom-tab review-tab section-padding">
                <ul class="nav nav-tabs nav-style-2" id="myTab2" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="tab1" data-toggle="tab" href="#tab-1" role="tab"
                           aria-controls="tab-1" aria-selected="true">
                            DESCRIPTION
                        </a>
                    </li>
                </ul>
                <div class="tab-content space-db--20" id="myTabContent">
                    <div class="tab-pane fade show active" id="tab-1" role="tabpanel" aria-labelledby="tab1">
                        <article class="review-article">
                            <h1 class="sr-only">Tab Article</h1>
                            <p>Description Description Description Description Description Description Description Description Description Description Description Description Description</p>
                            Description Description Description Description Description Description  Description Description Description Description Description Description Description
                        </article>
                    </div>
                </div>
            </div>
        </div>
        <!--=================================
RELATED PRODUCTS BOOKS
===================================== -->
        <section class="">
            <div class="container">
                <div class="section-title section-title--bordered">
                    <h2>RELATED PRODUCTS</h2>
                </div>
                <div class="product-slider sb-slick-slider slider-border-single-row" data-slick-setting='{
                "autoplay": true,
                "autoplaySpeed": 8000,
                "slidesToShow": 4,
                "dots":true
            }' data-slick-responsive='[
                {"breakpoint":1200, "settings": {"slidesToShow": 4} },
                {"breakpoint":992, "settings": {"slidesToShow": 3} },
                {"breakpoint":768, "settings": {"slidesToShow": 2} },
                {"breakpoint":480, "settings": {"slidesToShow": 1} }
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
                                    <img src="{{ asset($product->image_url )}}" alt="">
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
    </main>
@endsection
@section('scripts')
    <script type="text/javascript">
        function toggleFavourite(url) {
            $.ajax({
                url: url,
                type: "GET",
                data: {
                    _token: '{!! csrf_token() !!}'
                }
                // success: function(){
                //     alert('its done')
                // },
            });
        }
        function orderProduct(url) {
            $.ajax({
                url: url,
                type: "GET",
                data: {
                    _token: '{!! csrf_token() !!}'
                }
                // success: function(){
                //     alert('its done')
                // },
            });
        }
    </script>
@endsection
