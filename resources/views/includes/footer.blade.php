<footer class="site-footer">
    <div class="container">
        <div class="row justify-content-between  section-padding">
            <div class=" col-xl-6 col-lg-8 col-sm-12">
                <div class="single-footer pb--40">
                    <div class="brand-footer footer-title">
                        <img src="{{ asset('ourFiles/LOGO.png') }}" alt="">
                    </div>
                    <div class="footer-contact">
                        <p><span class="label">Address:</span><span class="text">{{ $warehouse->address }}</span></p>
                        <p><span class="label">Phone:</span><span class="text">{{ $warehouse->phone }}</span></p>
                        <p><span class="label">Email:</span><span class="text">{{ $warehouse->email }}</span></p>
                    </div>
                </div>
            </div>
            <div class=" col-xl-3 col-lg-2 col-sm-6">
                <div class="single-footer pb--40">
                    <div class="footer-title">
                        <h3>Information</h3>
                    </div>
                    <ul class="footer-list normal-list">
                        <li><a href="{{ route('products') }}">New Products</a></li>
                        <li><a href="{{ route('blogs.index') }}">New Blogs</a></li>
                        <li><a href="{{ route('contactus') }}">Contact us</a></li>
                        <li><a href="https://goo.gl/maps/dcWDogHCL1vtn7eE9">Sitemap</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <p class="copyright-heading">Copyright © 2021 <a href="#" class="author"></a>. All Right Reserved.
                <br></p>
        </div>
    </div>
</footer>
