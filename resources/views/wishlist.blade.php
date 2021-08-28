@extends('layouts.app')
@section('content')
    <section class="breadcrumb-section">
        <h2 class="sr-only">Site Breadcrumb</h2>
        <div class="container">
            <div class="breadcrumb-contents">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                        <li class="breadcrumb-item active">Wishlist</li>
                    </ol>
                </nav>
            </div>
        </div>
    </section>
    <!-- Wishlist Page Start -->
    <div class="cart_area inner-page-sec-padding-bottom">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <form action="https://demo.hasthemes.com/pustok-preview/pustok/">
                        <!-- Cart Table -->
                        <div class="cart-table table-responsive">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th class="pro-thumbnail">Image</th>
                                    <th class="pro-title">Product</th>
                                    <th class="pro-price">Price</th>
                                    <th class="pro-remove">Remove</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($wishlists as $wishlist)
                                <tr>
                                    <td class="pro-thumbnail"><a href="#"><img
                                                src="{{ asset($wishlist->product->image_url) }}" alt="Product"></a></td>
                                    <td class="pro-title"><a href="#">{{ $wishlist->product->title }}</a></td>
                                    <td class="pro-price"><span>{{ $wishlist->product->price }} S.P</span></td>
                                    <td class="pro-remove"><a onclick="deleteItem('{{ $wishlist->id }}', '{{ route('wishlist.destroy', $wishlist->id) }}')"><i class="far fa-trash-alt"></i></a></td>
                                </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Cart Page End -->
@endsection
@section('scripts')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>
    <script>
        function deleteItem(id, url) {
            $.ajax({
                url: url,
                type: 'POST',
                datatype: 'JSON',
                data: {_token: '{!! csrf_token() !!}', _method: 'delete'},
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
        }
    </script>
@endsection
