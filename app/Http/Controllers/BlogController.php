<?php

namespace App\Http\Controllers;

use App\Blog;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function index(){
        $blogs = Blog::all();
        return view('blogs.index',compact('blogs'));
    }

    public function show($id){
        $blog = Blog::findOrFail($id);
        return view('blogs.details',compact('blog'));
    }
}
