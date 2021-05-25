<div class="site-header d-none d-lg-block">
    <div class="header-middle pt--10 pb--10">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-3 ">
                    <a href="index.html" class="site-brand">
                        <img src="{{ asset('image/logo.png') }}" alt="">
                    </a>
                </div>
                <div class="col-lg-3">
                    <div class="header-phone ">
                        <div class="icon">
                            <i class="fas fa-headphones-alt"></i>
                        </div>
                        <div class="text">
                            <p>Free Support 24/7</p>
                            <p class="font-weight-bold number">+01-202-555-0181</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
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
                                    <li><a href="{{ route('wishlist') }}">Wishlist</a></li>
                                    <li><a href="{{ route('account') }}">My Account</a></li>
                                    <li><a href="{{ route('faq') }}">Faq</a></li>
                                    <li><a href="{{ route('contactus') }}">contact</a></li>
                                </ul>
                            </li>
                            <!-- Blog -->
                            <li class="menu-item">
                                <a href="{{ route('blogs.index') }}">Blogs</a>
                            </li>
                            <li class="menu-item">
                                <a href="{{ route('contactus') }}">Contact</a>
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
