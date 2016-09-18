@extends('layout')

@section('title')
   Edit news [{{ $news->id }}]
@stop

@section('content')
	<h2>Edit news [{{ $news->id }}]</h2>
	<form method='POST' action='/news/{{$news->id}}'>
		{{ method_field('PATCH') }}
		<div class='form-group'>
			<label for='headline'>Headline</label>
			<input class='form-control' id='headline' type='text' name='headline' value='{{ $news->headline }}'>
		</div>
		<div class='form-group'>
			<label for='body'>Body</label>
			<input class='form-control' id='body' type='text' name='body' value='{{ $news->body }}'>
		</div>
		<div class='form-group'>
			<input type='submit' name='submit' class='btn btn-success'>
		</div>
	</form>
@stop
