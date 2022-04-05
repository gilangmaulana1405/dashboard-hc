<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubDepartementModel extends Model
{
    protected $table = 'm_sub_departemen';
    protected $fillable = ['id', 'nama_sub_departemen', 'created_at', 'updated_at'];
    protected $guarded = ['id'];

    public function usermanagement()
    {
        return $this->hasMany(UserManagementModel::class);
    }
}
