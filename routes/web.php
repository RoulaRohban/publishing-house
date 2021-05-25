<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('index');
})->name('home');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('blogs','BlogController@index')->name('blogs.index');
Route::get('contactus','ContactUsController@index')->name('contactus');
Route::get('products','ProductController@index')->name('products');
Route::get('wishlist','WishlistController@index')->name('wishlist');
Route::get('faq','FaqController@index')->name('faq');
Route::get('account','AccountController@index')->name('account');
