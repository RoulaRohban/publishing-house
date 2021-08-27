<?php

namespace App\Http\Controllers;

use App\Order;
use App\OrderDetails;
use App\User;
use Illuminate\Http\Request;
use Auth;

class AccountController extends Controller
{
    public function index(){
        $myOrderIds = Order::where('user_id', Auth::user()->id)->pluck('id');
        $details = OrderDetails::whereIn('order_id',$myOrderIds)->get();
        return view('account', compact('details'));
    }

    public function editAddress (Request $request){
//        dd($request->all());
        Auth::user()->update([
            'address' => $request->address,
            'phone', $request->phone
        ]);
        return response()->json(['message'=>'Successfully Updated !']);
    }
}
