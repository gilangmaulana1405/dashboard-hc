<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DivisiModel extends Model
{
    protected $table = 'm_divisi';
    protected $fillable = ['id', 'nama_divisi', 'created_at', 'updated_at'];
    protected $guarded = ['id'];

    public function usermanagement()
    {
        return $this->hasMany(UserManagementModel::class);
    }
}
