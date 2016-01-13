<?php

use Phpmig\Migration\Migration;
use Illuminate\Database\Capsule\Manager as Capsule;
use App\Model\Value as Value;

class ValueView extends Migration
{
    /**
     * Do the migration
     */
    public function up()
    {
        Capsule::schema()->create('valueview', function($table)
        {
            $table->increments('id');
            $table->integer('type')->unsigned();
            $table->string('value');
            $table->timestamps();
        });
    }

    /**
     * Undo the migration
     */
    public function down()
    {
        Capsule::schema()->drop('valueview');
    }
}
