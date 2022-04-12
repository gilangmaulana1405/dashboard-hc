<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class UserManagementModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'nik' => $this->faker->biasedNumberBetween(1, 10),
            'nama_karyawan' => $this->faker->name(),
            'jabatan_id' => mt_rand(1, 25),
            'divisi_id' => mt_rand(1, 25),
            'departemen_id' => mt_rand(1, 25),
            'subdepartemen_id' => mt_rand(1, 25),
        ];
    }
}
