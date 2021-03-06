<?php

namespace App\Http\Controllers;

use App\Blog;
use App\Category;
use App\Order;
use App\Product;
use App\Wishlist;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $products = Product::all();
        $blogs = Blog::all();
        $products_discount = Product::latest()->take(10)->get();
        $products_sell = Product::latest()->take(4)->get();
        $categoryId = Category::where("name", "Children's Books")->pluck('id')->toArray();
        $children_books = Product::whereIn('category_id', $categoryId)->get();
        $categoryId2 = Category::where("name", "Religious")->pluck('id')->toArray();
        $religious_books = Product::whereIn('category_id', $categoryId2)->get();
        return view('index', compact('products','products_discount', 'products_sell', 'children_books', 'religious_books', 'blogs'));
    }

    public function toggleFavorite($id)
    {
        $favoriteExist=Wishlist::where([
            'user_id' => auth()->id(),
            'product_id' => $id
        ])->count() ;
        if($favoriteExist > 0)
        {
            Wishlist::where([
                'user_id' => auth()->id(),
                'product_id' => $id
            ])->delete();
            return response()->json(['message'=>'Successfully UnLiked !']);
        }
        else {
            Wishlist::create([
                'product_id' => $id,
                'user_id' => auth()->id()
            ]);
            return response()->json(['message'=>'Successfully liked !']);
        }
    }

    public function orderProduct($id){
        $product = Product::findOrFail($id);
        Order::create([
            'product_id' => $id,
            'user_id' => auth()->id(),
            'total_price' => $product->price
        ]);
        return response()->json(['message'=>'Successfully reserved !']);
    }
}
