@extends('layouts.app')
@section('content')
    <section class="breadcrumb-section">
        <h2 class="sr-only">Site Breadcrumb</h2>
        <div class="container">
            <div class="breadcrumb-contents">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                        <li class="breadcrumb-item active">Product</li>
                    </ol>
                </nav>
            </div>
        </div>
    </section>
    <main class="inner-page-sec-padding-bottom">
        <div class="container">
            <div class="row">
                <div class="col-lg-9">
                    <div class="shop-product-wrap list with-pagination row space-db--30 shop-border">
                        @foreach($products as $product)
                        <div class="col-lg-4 col-sm-6">
                            <div class="product-card card-style-list">
                                <div class="product-list-content">
                                    <div class="card-image">
                                        <img src="{{ $product->image_url }}" alt="">
                                    </div>
                                    <div class="product-card--body">
                                        <div class="product-header">
                                            <a href="#" class="author">
{{--                                                {{ $product->author->name }}--}}
                                            </a>
                                            <h3><a href="{{ route('products.show',$product->id) }}" tabindex="0">
                                                    {{ $product->title }}
                                                </a></h3>
                                        </div>
                                        <article>
                                            <h2 class="sr-only">Card List Article</h2>
                                            <p>Description Description Description Description Description Description Description Description Description
                                                Description Description Description Description</p>
                                        </article>
                                        <div class="price-block">
                                            <span class="price">{{ $product->price }} S.P</span>
                                        </div>
{{--                                        <div class="rating-block">--}}
{{--                                            <span class="fas fa-star star_on"></span>--}}
{{--                                            <span class="fas fa-star star_on"></span>--}}
{{--                                            <span class="fas fa-star star_on"></span>--}}
{{--                                            <span class="fas fa-star star_on"></span>--}}
{{--                                            <span class="fas fa-star "></span>--}}
{{--                                        </div>--}}
                                        <div class="btn-block">
                                            <a href="#" class="btn btn-outlined">reserve It !</a>
                                            <a href="#" class="card-link"><i class="fas fa-heart"></i> Add To
                                                Wishlist</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                    <!-- Pagination Block -->
                    <div class="row pt--30">
                        <div class="col-md-12">
                            <div class="pagination-block">
                                <ul class="pagination-btns flex-center">
                                    <li><a href="#" class="single-btn prev-btn ">|<i
                                                class="zmdi zmdi-chevron-left"></i> </a></li>
                                    <li><a href="#" class="single-btn prev-btn "><i
                                                class="zmdi zmdi-chevron-left"></i> </a></li>
                                    <li class="active"><a href="#" class="single-btn">1</a></li>
                                    <li><a href="#" class="single-btn">2</a></li>
                                    <li><a href="#" class="single-btn">3</a></li>
                                    <li><a href="#" class="single-btn">4</a></li>
                                    <li><a href="#" class="single-btn next-btn"><i
                                                class="zmdi zmdi-chevron-right"></i></a></li>
                                    <li><a href="#" class="single-btn next-btn"><i
                                                class="zmdi zmdi-chevron-right"></i>|</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3  mt--40 mt-lg--0">
                    <div class="inner-page-sidebar">
                        <!-- Accordion -->
                        <div class="single-block">
                            <h3 class="sidebar-title">Categories</h3>
                            <ul class="sidebar-menu--shop">
                                @foreach($categories as $category)
                                <li><a href="#">{{ $category->name }} ({{ $category->products ? $category->products->count() : '0' }})</a></li>
                                @endforeach
                            </ul>
                        </div>
                        <!-- Promotion Block -->
                        <div class="single-block">
                            <a href="#" class="promo-image sidebar">
                                <img src="image/others/home-side-promo.jpg" alt="">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
@endsection
