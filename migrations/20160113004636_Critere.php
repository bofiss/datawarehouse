<?php

use Phpmig\Migration\Migration;
use Illuminate\Database\Capsule\Manager as Capsule;
use App\Model\Critere as Criteres;

class Critere extends Migration
{
    /**
     * Do the migration
     */
    public function up()
    {
        Capsule::schema()->create('criteres', function($table)
        {
            $table->increments('id');
            $table->string('name');
            $table->timestamps();
        });
    }

    /**
     * Undo the migration
     */
    public function down()
    {
        Capsule::schema()->drop('criteres');
    }
}
