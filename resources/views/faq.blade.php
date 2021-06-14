@extends('layouts.app')
@section('content')
    <section class="breadcrumb-section">
        <h2 class="sr-only">Site FAQ</h2>
        <div class="container">
            <div class="breadcrumb-contents">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                        <li class="breadcrumb-item active">FAQ</li>
                    </ol>
                </nav>
            </div>
        </div>
    </section>

    <!-- faq Page Start -->
    <div class="faq-area inner-page-sec-padding-bottom">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="inner text-center">
                        <h1>GENERAL QUESTION</h1>
                    </div>
                </div>
            </div>
            <div class="row mbn-30">
                @foreach($faqs as $faq)
                <div class="col-lg-6 col-12 accordion-2">
                    <!--FAQ (Accordion) Start-->
                    <div class="accordion" id="gq-faqs-2">
                        <!--Cart Start-->
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0"><button class="collapsed" data-toggle="collapse" data-target="#gq-faq-8">{{ $faq->question }}</button></h5>
                            </div>
                            <div id="gq-faq-8" class="collapse" data-parent="#gq-faqs-2">
                                <div class="card-body">
                                    <p>{{ $faq->answer }}</p>
                                </div>
                            </div>
                        </div><!--Cart End-->
                    </div><!--FAQ (Accordion) End-->
                    <br>
                </div>

                @endforeach
            </div>
        </div>
    </div>
    <!-- faq Page End -->
@endsection
