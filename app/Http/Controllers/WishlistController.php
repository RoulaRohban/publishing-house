<?php

namespace App\Http\Controllers;

use App\Wishlist;
use Illuminate\Http\Request;
use Auth;

class WishlistController extends Controller
{
    public function index(){
        $wishlists = Wishlist::where('user_id', Auth::user()->id)->get();
        return view('wishlist', compact('wishlists'));
    }

    public function destroy(Request $request, $id)
    {
        if ($request->ajax()) {
            $deleted = Wishlist::findOrFail($id)->delete();
            if ($deleted) {
                return response()->json(['message'=>'Successfully Deleted !']);
            }
        }
        return response()->json(['message'=>'Error while Delete !']);
    }
}
