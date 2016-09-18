<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/list','NewsController@index');

Route::get('/news/add',function(){
	return view('add');
});

Route::post('/news/add','NewsController@store');

Route::get('/news/{news}','NewsController@show');

Route::get('/edit/{news}','NewsController@edit');

Route::patch('/news/{news}','NewsController@update');

Route::get('/delete/{news}','NewsController@delete');

Route::post('/comments/{news}','CommentController@store');

Route::get('/news/{news}/comments/{comment}/delete','CommentController@delete');
