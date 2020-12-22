<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddProductsCodesTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::create('products_codes', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->timestamps();
            $table->integer('product_id')->default(0)->nullable();
            $table->integer('attribute_id')->default(0)->nullable();
            $table->integer('country_id')->default(0)->nullable();
            $table->decimal('cost')->default(0)->nullable();
            $table->string('serial')->nullable();
            $table->text('code')->nullable();
            $table->string('additional_code')->nullable();
            $table->date('expiry_date')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {
        Schema::dropIfExists('products_codes');
    }

}
