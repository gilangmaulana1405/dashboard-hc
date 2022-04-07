<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KampusModel extends Model
{
    protected $table = 'kampus';
    protected $guarded  = ['id'];
}
