@extends('layouts.app')
@section('content')
    <section class="breadcrumb-section">
        <h2 class="sr-only">Site Breadcrumb</h2>
        <div class="container">
            <div class="breadcrumb-contents">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                        <li class="breadcrumb-item active">Contact Us</li>
                    </ol>
                </nav>
            </div>
        </div>
    </section>
    <!-- contact area Start -->
    <main class="contact_area inner-page-sec-padding-bottom">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="contact_form">
                        <h3 class="ct_title">Send Us a Message</h3>
                        <form id="contact-form" class="contact-form">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Your Name <span class="required">*</span></label>
                                        <input type="text" id="name" name="name" class="form-control"
                                               required>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Your Email <span class="required">*</span></label>
                                        <input type="email" id="email" name="email" class="form-control"
                                               required>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Your Message</label>
                                        <textarea id="message" name="message"
                                                  class="form-control"></textarea>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-btn">
                                        <button type="submit" value="submit" id="submit" class="btn btn-black w-100 save-data"
                                                name="submit">send</button>
                                    </div>
                                    <div class="form__output"></div>
                                </div>
                            </div>
                        </form>
                        <div class="form-output">
                            <p class="form-messege"></p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div id="google-map"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d106456.34689028889!2d36.212854632340665!3d33.50759893370287!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1518e6dc413cc6a7%3A0x6b9f66ebd1e394f2!2sDamascus%2C%20Syria!5e0!3m2!1sen!2snl!4v1625613704773!5m2!1sen!2snl" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe></div>
                </div>
            </div>
        </div>
    </main>
    <!-- contact area End -->
    <div class="contact-bottom-info inner-page-sec-padding-bottom">
        <div class="container">
            <div class="row">
                <!--Contact Information Start-->
                <div class="col-lg-3 col-sm-6 col-12 mb-30">
                    <div class="contact-info">
                        <span class="icon"><i class="fa fa-phone"></i></span>
                        <div class="content">
                            <h3 class="title">Contact By Phone</h3>
                            <p>{{ $warehouse->phone }}</p>
                        </div>
                    </div>
                </div>
                <!--Contact Information End-->

                <!--Contact Information Start-->
                <div class="col-lg-3 col-sm-6 col-12 mb-30">
                    <div class="contact-info">
                        <span class="icon"><i class="fa fa-envelope"></i></span>
                        <div class="content">
                            <h3 class="title">Contact By Email</h3>
                            <p>{{ $warehouse->email }}</p>
                        </div>
                    </div>
                </div>
                <!--Contact Information End-->

                <!--Contact Information Start-->
                <div class="col-lg-3 col-sm-6 col-12 mb-30">
                    <div class="contact-info">
                        <span class="icon"><i class="fa fa-map-marker"></i></span>
                        <div class="content">
                            <h3 class="title">Come To See Us</h3>
                            <p>{{ $warehouse->address }}</p>
                        </div>
                    </div>
                </div>
                <!--Contact Information End-->

                <!--Contact Information Start-->
                <div class="col-lg-3 col-sm-6 col-12 mb-30">
                    <div class="contact-info">
                        <span class="icon"><i class="fa fa-users"></i></span>
                        <div class="content">
                            <h3 class="title">{{ $warehouse->name }} Social</h3>
                            <ul class="social-list list-inline">
                                <li class="single-social facebook"><a href="{{ $warehouse->facebook }}"><i class="ion ion-social-facebook"></i></a></li>
                                <li class="single-social twitter"><a href="{{ $warehouse->twitter }}"><i class="ion ion-social-twitter"></i></a></li>
                                <li class="single-social google"><a href="{{ $warehouse->google }}"><i class="ion ion-social-googleplus-outline"></i></a></li>
                                <li class="single-social youtube"><a href="{{ $warehouse->youtube }}"><i class="ion ion-social-youtube"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--Contact Information End-->
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>
    <script>
        $(".save-data").click(function(event) {
            event.preventDefault();

            let name = $('#name').val();
            let email = $('#email').val();
            let message = $('#message').val();
            $.ajax({
                url: "{{ route('contact-us.store') }}",
                type: "POST",
                data: {
                    name: name,
                    email: email,
                    message: message,
                    _token: '{!! csrf_token() !!}'
                },
                success: function(response) {
                    console.log(response);
                    swal({
                            title: 'Done',
                            text: response.message,
                            type: "success",
                            confirmButtonColor  : "#2d6aff",
                            confirmButtonText   : "Ok",
                            allowOutsideClick: false,
                        },
                    )
                        .then(function(){
                            location.reload();
                        });
                }
            })
        });
    </script>
    @endsection
