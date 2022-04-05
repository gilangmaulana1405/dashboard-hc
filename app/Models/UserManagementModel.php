<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserManagementModel extends Model
{
    public $table = 'm_karyawan_user';
    protected $fillable = ['id', 'jabatan_id', 'divisi_id', 'departemen_id', 'subdepartemen_id', 'nik', 'nama_karyawan', 'created_at', 'updated_at'];
    protected $guarded = ['id'];
    
    public function jabatan()
    {
        return $this->belongsTo(JabatanModel::class);
    }

    public function divisi()
    {
        return $this->belongsTo(DivisiModel::class);
    }

    public function departemen()
    {
        return $this->belongsTo(DepartementModel::class);
    }

    public function subdepartemen()
    {
        return $this->belongsTo(SubDepartementModel::class);
    }
}
