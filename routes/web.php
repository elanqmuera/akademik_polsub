<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\c_mahasiswa;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/mahasiswa', [c_mahasiswa::class,'index']);
Route::get('/mahasiswa/create', [c_mahasiswa::class,'create']);
Route::post('/mahasiswa/store', [c_mahasiswa::class,'store']);
Route::get('/mahasiswa/{id}/edit', [c_mahasiswa::class,'edit']);



