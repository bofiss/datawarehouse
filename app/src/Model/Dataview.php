<?php
namespace App\Model;

use Illuminate\Database\Eloquent\Model;

/**
*
*/
class Dataview extends Model
{

	protected $table = 'dataview';

  public function secteur(){
     return $this->belongsTo('App\Model\Secteur');
  }
  public function value(){
     return $this->belongsTo('App\Model\Value');
  }
  public function critere(){
     return $this->belongsTo('App\Model\Critere');
  }
}
