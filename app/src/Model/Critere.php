<?php
namespace App\Model;

use Illuminate\Database\Eloquent\Model;

/**
*
*/
class Critere extends Model
{

	protected $table = 'criteres';


	public function dataview(){
		return $this->hasMany('App\Model\Dataview');
	}

}
