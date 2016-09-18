<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{
	protected $fillable = ['headline','body'];

	public function comments(){
		return $this -> hasMany( Comment::class );
	}
}
