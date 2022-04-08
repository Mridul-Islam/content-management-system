<?php

use App\Http\Controllers\AdminCategoriesController;
use App\Http\Controllers\AdminMediasController;
use App\Http\Controllers\AdminPostsController;
use App\Http\Controllers\AdminUsersController;
use App\Http\Controllers\CommentRepliesController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PostCommentsController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
*/

//Route::get('/', function () {
//    return view('welcome');
//});

Auth::routes();

Route::get('/', [HomeController::class, 'index'])->name('home');

Route::group(['middleware'=>'auth'], function (){
    Route::get('/admin', function (){
        return view('admin.index');
    })->name('admin.home');
});



Route::group(['middleware'=>'admin'], function (){

    Route::resource('/admin/users', AdminUsersController::class);

    Route::resource('/admin/posts', AdminPostsController::class);

    Route::resource('/admin/categories', AdminCategoriesController::class);

    Route::resource('/admin/media', AdminMediasController::class);

    Route::resource('/admin/comments', PostCommentsController::class);

    Route::resource('/admin/comment/replies', CommentRepliesController::class);

});


