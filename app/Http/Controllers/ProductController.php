<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index(){
        $products = Product::all();
        $categories = Category::all();
        return view('products.index',compact('products','categories'));
    }
    public function show($id){
        $product = Product::findOrFail($id);
        return view('products.details',compact('product'));
    }
}
