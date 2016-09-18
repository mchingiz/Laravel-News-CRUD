<?php

namespace App\Http\Controllers;

use App\News;
use App\Comment;
use Illuminate\Http\Request;
use App\Http\Requests;

class CommentController extends Controller
{
   public function store(Request $request, News $news){
		$comment = new Comment;

		$comment->username = $request->username;

		$comment->body = $request->body;

		$news->comments()->save($comment);

		return back();
	}

	public function delete(News $news, Comment $comment){
		$comment->delete();

		return back();
	}
}
