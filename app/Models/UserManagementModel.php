<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserManagementModel extends Model
{
    use HasFactory;
    public $table = 'm_karyawan_user';
    protected $fillable = ['id', 'jabatan_id', 'divisi_id', 'departemen_id', 'subdepartemen_id', 'nik', 'nama_karyawan', 'created_at', 'updated_at'];
    public $guarded = [];
    
    public function jabatan()
    {
        return $this->belongsTo(JabatanModel::class, 'jabatan_id');
    }

    public function divisi()
    {
        return $this->belongsTo(DivisiModel::class, 'divisi_id');
    }

    public function departemen()
    {
        return $this->belongsTo(DepartementModel::class, 'departemen_id');
    }

    public function subdepartemen()
    {
        return $this->belongsTo(SubDepartementModel::class, 'subdepartemen_id');
    }
}
