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
Route::get('blogs/{id}','BlogController@show')->name('blogs.show');
Route::get('contactus','ContactUsController@index')->name('contactus');
Route::get('products','ProductController@index')->name('products');
Route::get('products/{id}','ProductController@show')->name('products.show');
Route::get('wishlist','WishlistController@index')->name('wishlist');
Route::get('faq','FaqController@index')->name('faq');
Route::get('account','AccountController@index')->name('account');
Route::post('contact-us','ContactUsController@store')->name('contact-us.store');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
