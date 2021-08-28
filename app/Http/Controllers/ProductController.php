<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index(){
        $products = Product::paginate(5);
        $categories = Category::all();
        return view('products.index',compact('products','categories'));
    }
    public function show($id){
        $product = Product::findOrFail($id);
        $products = Product::where('category_id', $product->category_id)->get();
        return view('products.details',compact('product' ,'products'));
    }
}
