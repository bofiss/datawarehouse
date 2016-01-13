<?php

use Phpmig\Migration\Migration;
use Illuminate\Database\Capsule\Manager as Capsule;
use App\Model\Dataview as Dataviews;

class Dataview extends Migration
{
    /**
     * Do the migration
     */
    public function up()
    {
        Capsule::schema()->create('dataview', function($table)
        {
            $table->increments('id');
            $table->string('year');
            $table->integer('secteur_id')->unsigned();
            $table->foreign('secteur_id')->references('id')->on('secteurs');
            $table->integer('critere_id')->unsigned();
            $table->foreign('critere_id')->references('id')->on('criteres');
            $table->integer('value_id')->unsigned();
            $table->foreign('value_id')->references('id')->on('valueview');
            $table->timestamps();
        });
    }

    /**
     * Undo the migration
     */
    public function down()
    {
        Capsule::schema()->drop('dataview');
    }
}
