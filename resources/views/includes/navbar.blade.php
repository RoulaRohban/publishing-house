<div class="site-header d-none d-lg-block">
    <div class="header-middle pt--10 pb--10">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-3 ">
                    <a href="#" class="site-brand">
                        <img src="{{ asset('image/logo.png') }}" alt="">
                    </a>
                </div>
                <div class="col-lg-2">
                    <div class="header-phone ">
                        <div class="icon">
                            <i class="fas fa-headphones-alt"></i>
                        </div>
                        <div class="text">
                            <p>Free Support 24/7</p>
                            <p class="font-weight-bold number">{{ $warehouse->phone }}</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="main-navigation flex-lg-right">
                        <ul class="main-menu menu-right ">
                            <li class="menu-item">
                                <a href="{{ route('home') }}">Home</a>
                            </li>
                            <!-- Shop -->
                            <li class="menu-item">
                                <a href="{{ route('products') }}">Products</a>
                            </li>
                            <!-- Pages -->
                            <li class="menu-item has-children">
                                <a href="javascript:void(0)">Pages <i class="fas fa-chevron-down dropdown-arrow"></i></a>
                                <ul class="sub-menu">
                                    @guest
                                    <li><a href="{{ route('login') }}">Login</a></li>
                                    @if (Route::has('register'))
                                        <li><a href="{{ route('register') }}">Register</a>
                                        </li>
                                    @endif
                                    @else
                                        <li><a href="{{ route('account') }}">My Account</a></li>
                                        <li><a href="{{ route('wishlist') }}">Wishlist</a></li>
                                        <li><a href="{{ route('logout') }}"
                                               onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                                {{ __('Logout') }}
                                            </a>
                                            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                                @csrf
                                            </form>
                                        </li>
                                    @endguest
                                </ul>
                            </li>
                            <!-- Blog -->
                            <li class="menu-item">
                                <a href="{{ route('blogs.index') }}">Blogs</a>
                            </li>
                            <li class="menu-item">
                                <a href="{{ route('contactus') }}">Contact</a>
                            </li>
                            <li class="menu-item">
                            <a href="{{ route('faq') }}">Faq</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-bottom pb--10">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-3">
                </div>
                <div class="col-lg-5">
                    <div class="header-search-block">
                        <input type="text" placeholder="Search entire store here">
                        <button>Search</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
