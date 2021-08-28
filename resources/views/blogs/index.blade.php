@extends('layouts.app')
@section('content')
    <section class="breadcrumb-section">
        <h2 class="sr-only">Blogs Website</h2>
        <div class="container">
            <div class="breadcrumb-contents">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                        <li class="breadcrumb-item active">Blog</li>
                    </ol>
                </nav>
            </div>
        </div>
    </section>
    <section class="inner-page-sec-padding-bottom space-db--30">
        <div class="container">
            <div class="row space-db-lg--60 space-db--30">
                @foreach($blogs as $blog)
                <div class="col-lg-4 col-md-6 mb-lg--60 mb--30">
                    <div class="blog-card card-style-grid">
                        <a href="{{ route('blogs.show',$blog->id) }}" class="image d-block">
                            <img src="{{ asset($blog->image_url) }}" alt="">
                        </a>
                        <div class="card-content">
                            <h3 class="title"><a href="{{ route('blogs.show',$blog->id) }}">{{ $blog->title }}</a></h3>
                            <p class="post-meta"><span>{{ $blog->created_at->diffForHumans() }} </span> | <a href="#"></a></p>
                            <article>
                                <h2 class="sr-only">
                                    Blog Article
                                </h2>
                                <p>{{ $blog->description }}</p>
                                <a href="{{ route('blogs.show',$blog->id) }}" class="blog-link">Read More</a>
                            </article>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>
@endsection
