<?php

namespace App\Http\Controllers;

use App\Order;
use App\OrderDetails;
use App\User;
use Illuminate\Http\Request;
use Auth;
use Illuminate\Support\Facades\Hash;

class AccountController extends Controller
{
    public function index(){
        $details = Order::where('user_id', Auth::user()->id)->paginate(4);
//        dd($details);
        return view('account', compact('details'));
    }

    public function editAddress (Request $request){
        $user = Auth::user();
        $updated = $user->update([
            'address' => $request->address,
            'phone' => $request->phone
        ]);
        if ($updated) {
            return response()->json(['message'=>'Successfully Updated !']);
        }
        return response()->json(['message'=>'Not Updated !']);
    }

    public function editAccount(Request $request) {
        $user = Auth::user();
        $updated = $user->update([
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);
        if ($updated) {
            return response()->json(['message'=>'Successfully Updated !']);
        }
        return response()->json(['message'=>'Not Updated !']);
    }
}
