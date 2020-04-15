<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Api\AuthController as Auth;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
	return $request->user();
});

Route::group(['prefix' => 'v1'], function($router) {
	Route::group([
		'middleware' => 'api',
		'prefix' => 'auth'
	], function ($router) {
		Route::post('login', Auth::class . '@login');
		Route::post('logout', Auth::class . '@logout');
		Route::post('refresh', Auth::class . '@refresh');
		Route::post('me', Auth::class . '@me');
	});
	// Route::resource('auth', Auth::class);
	Route::apiResource('auth', Auth::class);
});

Route::group(['middleware' => ['jwt.verify']], function($router) {
	Route::get('users', Api\UserController::class . '@index');
});
