<?php

namespace App\Http\Controllers;

use App\Contact;
use App\Http\Requests\Contact\StoreContactRequest;
use App\Warehouse;
use Illuminate\Http\Request;

class ContactUsController extends Controller
{
    public function index(){
        return view('contactus');
    }

    public function store (StoreContactRequest $request) {
        $validatedData = $request->validated();
        Contact::create($validatedData);
        return response()->json(['message'=>'Successfully Send Your Message']);
    }
}
