<!DOCTYPE html>
<html lang="en">
@include('includes.header')
@yield('styles')
<!-- body -->
<body class="main-layout">
@include('includes.navbar')
@yield('content')
@include('includes.footer')
<!-- Javascript files-->
<script src="{!! asset('js/jquery.min.js') !!}"></script>
<script src="{!! asset('js/popper.min.js') !!}"></script>
<script src="{!! asset('js/bootstrap.bundle.min.js') !!}"></script>
<script src="{!! asset('js/jquery-3.0.0.min.js') !!}"></script>
<script src="{!! asset('js/plugin.js') !!}"></script>
<!-- sidebar -->
<script src="{!! asset('js/jquery.mCustomScrollbar.concat.min.js') !!}"></script>
<script src="{!! asset('js/custom.js') !!}"></script>
<!-- javascript -->
<script src="{!! asset('js/owl.carousel.js') !!}"></script>
<script src="{!! asset('https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js') !!}"></script>
@yield('scripts')
</body>
</html>
