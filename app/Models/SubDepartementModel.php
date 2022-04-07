<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Testing\Fluent\Concerns\Has;

class SubDepartementModel extends Model
{
    use HasFactory;
    protected $table = 'm_sub_departemen';
    protected $fillable = ['id', 'nama_sub_departemen', 'created_at', 'updated_at'];
    protected $guarded = ['id'];

    public function usermanagement()
    {
        return $this->hasMany(UserManagementModel::class, 'subdepartemen_id');
    }
}
