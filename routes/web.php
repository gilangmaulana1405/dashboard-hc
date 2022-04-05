<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserManagementController;


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

// halaman utama
Route::get('/', function () {
    return view('index', [
        'title' => 'Dashboard'
    ]);
});


// Route::resource('/pages/user-management', UserManagementController::class);

// crud user management
Route::get('/pages/user-management/', [UserManagementController::class, 'index']);
Route::post('/pages/user-management/post', [UserManagementController::class, 'store'])->name('post.user');
Route::get('/pages/user-management/create', [UserManagementController::class, 'create'])->name('create.user');
Route::delete('/pages/user-management/delete/{id}', [UserManagementController::class, 'destroy'])->name('delete.user');



