<?php
namespace App\Model;

use Illuminate\Database\Eloquent\Model;

/**
*
*/
class Secteur extends Model
{

	protected $table = 'secteurs';

	public function dataview(){
		return $this->hasMany('App\Model\Dataview');
	}



}
