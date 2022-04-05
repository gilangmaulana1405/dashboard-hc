<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UserManagement extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('m_karyawan_user', function (Blueprint $table) {
            $table->id();
            $table->foreignId('jabatan_id');
            $table->foreignId('divisi_id');
            $table->foreignId('departemen_id');
            $table->foreignId('subdepartemen_id');
            $table->integer('nik')->nullable();
            $table->string('nama_karyawan')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('m_karyawan_user');
    }
}

