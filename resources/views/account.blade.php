@extends('layouts.app')
@section('content')
    <section class="breadcrumb-section">
        <h2 class="sr-only">Site Breadcrumb</h2>
        <div class="container">
            <div class="breadcrumb-contents">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                        <li class="breadcrumb-item active">My Account</li>
                    </ol>
                </nav>
            </div>
        </div>
    </section>
    <div class="page-section inner-page-sec-padding">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="row">
                        <!-- My Account Tab Menu Start -->
                        <div class="col-lg-3 col-12">
                            <div class="myaccount-tab-menu nav" role="tablist">
                                <a href="#dashboad" class="active" data-toggle="tab"><i
                                        class="fas fa-tachometer-alt"></i>
                                    Dashboard</a>
                                <a href="#orders" data-toggle="tab"><i class="fa fa-cart-arrow-down"></i> Orders</a>
                                <a href="#address-edit" data-toggle="tab"><i class="fa fa-map-marker"></i>
                                    address</a>
                                <a href="#account-info" data-toggle="tab"><i class="fa fa-user"></i> Account
                                    Details</a>
                                <a href="{{ route('logout') }}"
                                   onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                    <i class="fas fa-sign-out-alt"></i>
                                    {{ __('Logout') }}
                                </a>
                                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                    @csrf
                                </form>
                            </div>
                        </div>
                        <!-- My Account Tab Menu End -->
                        <!-- My Account Tab Content Start -->
                        <div class="col-lg-9 col-12 mt--30 mt-lg--0">
                            <div class="tab-content" id="myaccountContent">
                                <!-- Single Tab Content Start -->
                                <div class="tab-pane fade show active" id="dashboad" role="tabpanel">
                                    <div class="myaccount-content">
                                        <h3>Dashboard</h3>
                                        <div class="welcome mb-20">
                                            <p>Hello, <strong>{{ Auth::user()->name  }}</strong>
                                        </div>
                                        <p class="mb-0">From your account dashboard. you can easily check &amp; view
                                            your
                                            recent orders, manage your shipping and billing addresses and edit your
                                            password and account details.</p>
                                    </div>
                                </div>
                                <!-- Single Tab Content End -->
                                <!-- Single Tab Content Start -->
                                <div class="tab-pane fade" id="orders" role="tabpanel">
                                    <div class="myaccount-content">
                                        <h3>Orders</h3>
                                        <div class="myaccount-table table-responsive text-center">
                                            <table class="table table-bordered">
                                                <thead class="thead-light">
                                                <tr>
                                                    <th>No</th>
                                                    <th>Name</th>
                                                    <th>Date</th>
                                                    <th>Status</th>
                                                    <th>Total</th>
                                                    <th>Action</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                @foreach($details as $key =>$detail)
                                                <tr>
                                                    <td>{{ $key+1 }}</td>
                                                    <td>{{ $detail->product->title }}</td>
                                                    <td>{{ $detail->created_at ?? '---' }}</td>
                                                    <td>{{ $detail->status }}</td>
                                                    <td>{{ $detail->total_price }} S.P</td>
                                                    <td><a href="{{ route('products.show', $detail->product->id) }}" class="btn">View</a></td>
                                                </tr>
                                                @endforeach
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single Tab Content End -->
                                <!-- Single Tab Content Start -->
                                <div class="tab-pane fade" id="address-edit" role="tabpanel">
                                    <div class="myaccount-content">
                                        <h3>Address</h3>
                                        <address>
                                            <p><strong>{{ Auth::user()->name }}</strong></p>
                                            <p>{{ Auth::user()->address }}</p>
                                            <p>Mobile: {{ Auth::user()->phone }}</p>
                                        </address>
                                        <a href="#" class="btn btn--primary" data-toggle="modal" data-target="#edit_address_modal"><i class="fa fa-edit"></i>Edit
                                            Address</a>
                                    </div>
                                </div>
                                <!-- Single Tab Content End -->
                                <!-- Single Tab Content Start -->
                                <div class="tab-pane fade" id="account-info" role="tabpanel">
                                    <div class="myaccount-content">
                                        <h3>Account Details</h3>
                                        <div class="account-details-form">
                                            <form action="#">
                                                <div class="row">
                                                    <div class="col-lg-6 col-12  mb--30">
                                                        <input id="first-name" placeholder="First Name" type="text">
                                                    </div>
                                                    <div class="col-lg-6 col-12  mb--30">
                                                        <input id="last-name" placeholder="Last Name" type="text">
                                                    </div>
                                                    <div class="col-12  mb--30">
                                                        <input id="display-name" placeholder="Display Name"
                                                               type="text">
                                                    </div>
                                                    <div class="col-12  mb--30">
                                                        <input id="email" placeholder="Email Address" type="email">
                                                    </div>
                                                    <div class="col-12  mb--30">
                                                        <h4>Password change</h4>
                                                    </div>
                                                    <div class="col-12  mb--30">
                                                        <input id="current-pwd" placeholder="Current Password"
                                                               type="password">
                                                    </div>
                                                    <div class="col-lg-6 col-12  mb--30">
                                                        <input id="new-pwd" placeholder="New Password"
                                                               type="password">
                                                    </div>
                                                    <div class="col-lg-6 col-12  mb--30">
                                                        <input id="confirm-pwd" placeholder="Confirm Password"
                                                               type="password">
                                                    </div>
                                                    <div class="col-12">
                                                        <button class="btn btn--primary">Save Changes</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single Tab Content End -->
                            </div>
                        </div>
                        <!-- My Account Tab Content End -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="edit_address_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel">edit Address & Phone Number</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group has-feedback {{ $errors->has('phone') ? 'has-error' : '' }}">
                            <label>Phone Number</label>
                            <input id="phone" type="text" class="form-control" name="phone"
                                   value="{{  Auth::user()->phone }}">
                            @if ($errors->has('phone'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('phone') }}</strong>
                                </span>
                            @endif
                        </div>
                        <div class="form-group has-feedback {{ $errors->has('address') ? 'has-error' : '' }}">
                            <label>Address</label>
                            <textarea id="address" name="address" cols="20" rows="10" class="form-control">{{ Auth::user()->address }}</textarea>
                            @if ($errors->has('address'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('address') }}</strong>
                                </span>
                            @endif
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn--primary save-data"><i class="fa fa-edit"></i>Save changes
                    </button>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('scripts')
<script>
    function SubmitForm(formId)
    {
        $('#'+formId).submit();
    }
</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>
    <script>
        $(".save-data").click(function(event) {
            event.preventDefault();

            let phone = $('#phone').val();
            let address = $('#address').val();
            $.ajax({
                url: "{{ route('address.edit') }}",
                type: "POST",
                data: {
                    phone: phone,
                    address: address,
                    _token: '{!! csrf_token() !!}',
                    _method: 'PUT'
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
