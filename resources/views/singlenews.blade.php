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
@stop
