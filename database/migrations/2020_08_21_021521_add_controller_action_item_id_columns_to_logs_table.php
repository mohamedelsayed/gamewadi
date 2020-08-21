<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddControllerActionItemIdColumnsToLogsTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::table('logs', function (Blueprint $table) {
            $table->string('controller')->nullable();
            $table->string('action')->nullable();
            $table->integer('item_id')->default(0)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {
        Schema::table('logs', function (Blueprint $table) {
            $table->dropColumn('controller');
            $table->dropColumn('action');
            $table->dropColumn('item_id');
        });
    }

}
