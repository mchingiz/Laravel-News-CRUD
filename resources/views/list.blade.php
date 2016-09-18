@extends('layout')

@section('title')
   All news
@stop

@section('content')
	<div class='list-group'>
		<h2>All news</h2>
		@foreach($allnews as $singlenews)
		<div class='list-group-item'>
			<h5 class='list-group-item-heading'>{{ $singlenews->headline }}</h5>
			<p class='list-group-item-text' style='padding-bottom:10px'>{{ $singlenews->body }}</p>
				<a href='/news/{{$singlenews->id}}' class='btn btn-sm btn-primary'>See</a>
				<a href='/edit/{{$singlenews->id}}' class='btn btn-sm btn-warning'>Edit</a>
				<a href='/delete/{{$singlenews->id}}' class='btn btn-sm btn-danger'>Delete</a>
		</div>
		@endforeach
		<a href='/news/add' class='btn btn-primary' style='margin-top:10px'>Add news</a>
	</div>
@stop
