<!DOCTYPE html>
<html lang="zxx">
@include('includes.header')
@yield('styles')
<body>
<div class="site-wrapper" id="top">
@include('includes.navbar')
@yield('content')
</div>
<!--=================================
Brands Slider
===================================== -->
<section class="section-margin">
    <h2 class="sr-only">Brand Slider</h2>
    <div class="container">
        <div class="brand-slider sb-slick-slider border-top border-bottom" data-slick-setting='{
                                            "autoplay": true,
                                            "autoplaySpeed": 8000,
                                            "slidesToShow": 6
                                            }' data-slick-responsive='[
                {"breakpoint":992, "settings": {"slidesToShow": 4} },
                {"breakpoint":768, "settings": {"slidesToShow": 3} },
                {"breakpoint":575, "settings": {"slidesToShow": 3} },
                {"breakpoint":480, "settings": {"slidesToShow": 2} },
                {"breakpoint":320, "settings": {"slidesToShow": 1} }
            ]'>
            <div class="single-slide">
                <img src="image/others/brand-1.jpg" alt="">
            </div>
            <div class="single-slide">
                <img src="image/others/brand-2.jpg" alt="">
            </div>
            <div class="single-slide">
                <img src="image/others/brand-3.jpg" alt="">
            </div>
            <div class="single-slide">
                <img src="image/others/brand-4.jpg" alt="">
            </div>
            <div class="single-slide">
                <img src="image/others/brand-5.jpg" alt="">
            </div>
            <div class="single-slide">
                <img src="image/others/brand-6.jpg" alt="">
            </div>
            <div class="single-slide">
                <img src="image/others/brand-1.jpg" alt="">
            </div>
            <div class="single-slide">
                <img src="image/others/brand-2.jpg" alt="">
            </div>
        </div>
    </div>
</section>
@include('includes.footer')
<!-- Use Minified Plugins Version For Fast Page Load -->
<script src="{{ asset('js/plugins.js') }}"></script>
<script src="{{ asset('js/ajax-mail.js') }}"></script>
<script src="{{ asset('js/custom.js') }}"></script>
@yield('scripts')
</body>
</html>
