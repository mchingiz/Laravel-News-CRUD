@extends('layout')

@section('title')
   News [{{ $news->id }}]
@stop

@section('content')
	<h6>News [{{ $news->id }}]</h6>
	<hr>
	<div style='padding-bottom:30px;'>
		<h1>{{ $news->headline }}</h1>
		<p>{{ $news->body }}</p>
	</div>
	<a href='/edit/{{$news->id}}' class='btn btn-sm btn-warning'>Edit</a>
	<a href='/delete/{{$news->id}}' class='btn btn-sm btn-danger'>Delete</a>
	<a href='/list' class='btn btn-sm btn-primary'>Go back to list of news</a>
	<div class='list-group'>
		@if($news->comments)
			<hr>
			<h4>Comments</h4>
		@endif
		@foreach($news->comments as $comment)
		<div class='list-group-item' style='position:relative'>
			<h6 class='list-group-item-heading'>{{ $comment->username }}</h6>
			<p class='list-group-item-text' style='padding-bottom:10px'>{{ $comment->body }}</p>
			<a href='/news/{{$news->id}}/comments/{{$comment->id}}/delete' class="btn btn-danger btn-sm" style="position:absolute;top:10px;right:10px;">x</a>
		</div>
		@endforeach
		<hr style='margin-top:50px;'>
		<h4>Add Comment</h4>
		<form method='POST' action='/comments/{{$news->id}}' >
			<div class='from-group'>
				<label for='username'>Your name</label>
				<input class='form-control' id='username' name='username' type='text'>
			</div>
			<div class='form-group'>
				<label for='body'>Your comment</label>
				<input class='form-control' id='body' name='body' type='text'>
			</div>
			<input type="submit" class="btn btn-primary" name="submit">
		</form>
@stop
