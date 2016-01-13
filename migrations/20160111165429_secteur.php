<?php

use Phpmig\Migration\Migration;
use Illuminate\Database\Capsule\Manager as Capsule;
use App\Model\Secteur as Secteurs;

class Secteur extends Migration
{
    /**
     * Do the migration
     */
    public function up()
    {
        Capsule::schema()->create('secteurs', function($table)
        {
            $table->increments('id');
            $table->string('name');
            $table->timestamps();
        });
        $array = [
             ['name'=> 'Agriculture'],
             ['name'=> 'Informatique'],
             ['name'=> 'Commerce'],
             ['name'=> 'Restauration'],
             ['name'=> 'Tourisme']
          ];

        Secteurs::insert($array);

    }

    /**
     * Undo the migration
     */
    public function down()
    {
        Capsule::schema()->drop('secteurs');
    }
}
