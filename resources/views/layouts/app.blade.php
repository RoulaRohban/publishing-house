<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
@include('includes.header')
@yield('styles')
<body>
<div class="site-wrapper" id="top">
    @include('includes.navbar')
    @yield('content')
</div>
@include('includes.footer')
<!-- Use Minified Plugins Version For Fast Page Load -->
<script src="{{ asset('js/plugins.js') }}"></script>
<script src="{{ asset('js/ajax-mail.js') }}"></script>
<script src="{{ asset('js/custom.js') }}"></script>
@yield('scripts')
</body>
</html>

