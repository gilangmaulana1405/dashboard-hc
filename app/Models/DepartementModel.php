<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DepartementModel extends Model
{
    protected $table = 'm_departemen';
    protected $fillable = ['id', 'nama_departemen', 'created_at', 'updated_at'];
    protected $guarded = ['id'];

    public function usermanagement()
    {
        return $this->hasMany(UserManagementModel::class);
    }

    public function jabatan()
    {
        return $this->hasMany(JabatanModel::class);
    }
}
