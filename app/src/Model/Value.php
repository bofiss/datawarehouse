<?php
namespace App\Model;

use Illuminate\Database\Eloquent\Model;

/**
*
*/
class Value extends Model
{

	protected $table = 'valueview';

	public function dataview(){
		return $this->hasMany('App\Model\Dataview');
	}
}
