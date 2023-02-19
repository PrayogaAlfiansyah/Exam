<?php

use App\Http\Livewire\Users;
use App\Http\Livewire\UserData;
use App\Http\Livewire\BeliPaket;
use App\Http\Livewire\Roles;
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
    //auth()->user()->assignRole('admin');
    return view('welcome');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});

Route::group(['middleware' => ['auth:sanctum', 'role:admin']], function(){
    Route::get('/admin/users', Users::class)->name('usersManagement');
    Route::get('/admin/roles', Roles::class)->name('RoleManagement');
});

Route::group(['middleware' => ['auth:sanctum', 'role:admin|staff']], function(){
    Route::get('/staff/userData', UserData::class)->name('userData');
});

Route::group(['middleware' => ['auth:sanctum', 'role:admin|staff|user']], function(){
    Route::get('/user/Beli', BeliPaket::class)->name('BeliPaket');
});

