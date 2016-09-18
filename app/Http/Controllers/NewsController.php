<?php

namespace App\Http\Controllers;

use App\News;
use Illuminate\Http\Request;
use App\Http\Requests;

class NewsController extends Controller
{
	public function index(){
		$allnews = News::all();

		return view('list',compact('allnews'));
	}

	public function store(Request $request){
		$news=new News;

		$news->headline = $request->headline;

		$news->body = $request->body;

		$news->save();

		$allnews=News::all();

		return view('list',compact('allnews'));
	}

	public function show(News $news){
		return view('singlenews',compact('news'));
	}

	public function edit(News $news){
		return view('edit', compact('news'));
	}

	public function update(Request $request,News $news){
		$news->update($request->all());

		return view('singlenews',compact('news'));
	}

	public function delete(News $news){
		$news->delete();

		$allnews=News::all();

		return view('list',compact('allnews'));
	}
}
