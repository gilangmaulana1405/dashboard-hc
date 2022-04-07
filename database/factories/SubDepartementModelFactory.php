<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class SubDepartementModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'nama_sub_departemen' => $this->faker->bs(),
        ];
    }
}
