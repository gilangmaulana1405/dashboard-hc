<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\JabatanModel;
use App\Models\DivisiModel;
use App\Models\DepartementModel;
use App\Models\SubDepartementModel;
use App\Models\UserManagementModel;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\JabatanModel::factory(10)->create();

        JabatanModel::factory(25)->create();
        DivisiModel::factory(25)->create();
        DepartementModel::factory(25)->create();
        SubDepartementModel::factory(25)->create();
        UserManagementModel::factory(25)->create();

    }
}
