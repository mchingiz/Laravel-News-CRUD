<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
   protected $fillable = ['username','body'];

	public function news()
	{
		return $this -> belongsTo( News::class );
	}
}
