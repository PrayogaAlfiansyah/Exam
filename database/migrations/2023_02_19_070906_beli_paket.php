<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
     /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('beli__pakets', function (Blueprint $table) {
            $table->id();
            $table->integer('user_id')->unsigned();
            $table->string('nama_user');
            $table->string('nama_paket');
            $table->integer('total_user');
            $table->string('total_harga');
            $table->timestamps();
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('beli__pakets');
    }//
};
