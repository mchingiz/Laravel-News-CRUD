@extends('layout')

@section('title')
   Add news
@stop

@section('content')
	<h2>Add news</h2>
	<form method='POST' action='/news/add'>
		<div class='form-group'>
			<label for='headline'>Headline</label>
			<input class='form-control' id='headline' type='text' name='headline'>
		</div>
		<div class='form-group'>
			<label for='body'>Body</label>
			<input class='form-control' id='body' type='text' name='body'>
		</div>
		<div class='form-group'>
			<input type='submit' name='submit' class='btn btn-success'>
		</div>
	</form>
@stop
