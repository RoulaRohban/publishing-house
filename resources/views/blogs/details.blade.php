@extends('layouts.app')
@section('content')
    <section class="breadcrumb-section">
        <h2 class="sr-only">Blog Details</h2>
        <div class="container">
            <div class="breadcrumb-contents">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                        <li class="breadcrumb-item active">Blog Details</li>
                    </ol>
                </nav>
            </div>
        </div>
    </section>
    <section class="inner-page-sec-padding-bottom">
        <div class="container">
            <div class="blog-post post-details mb--50">
                <div class="blog-image">
                    <img src="{{ asset($blog->image_url) }}" alt="">
                </div>
                <div class="blog-content mt--30">
                    <header>
                        <h3 class="blog-title"> {{ $blog->title }}</h3>
                        <div class="post-meta">
                                <span class="post-author">
                                    <i class="fas fa-user"></i>
                                    <span class="text-gray">Posted by : </span>
                                    admin
                                </span>
                            <span class="post-separator">|</span>
                            <span class="post-date">
                                    <i class="far fa-calendar-alt"></i>
                                    <span class="text-gray">Since : </span>
                                    {{ $blog->created_at->diffForHumans() }}
                                </span>
                        </div>
                    </header>
                    <article>
                        <h3 class="d-none sr-only">blob-article</h3>
                        <p class="p-0">{{ $blog->description }}</p>
                    </article>
                </div>
            </div>
        </div>
    </section>
    @endsection
