<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;
use App\Models\Core\Setting;

class AddAutomaticCleanLogKeyToSettingsTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
//        Schema::table('settings', function (Blueprint $table) {
//            //
//        });
        $key = 'automatic_clean_log';
        $item = DB::table('settings')->where('name', $key)->first();
        if (!$item) {
            $setting = new Setting();
            $setting->id = 128;
            $setting->name = $key;
            $setting->value = 0;
            $setting->save();
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {
//        Schema::table('settings', function (Blueprint $table) {
//
//        });
        $key = 'automatic_clean_log';
        $item = DB::table('settings')->where('name', $key)->first();
        if (!$item) {
            $item->forceDelete();
        }
    }

}
