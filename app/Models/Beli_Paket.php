<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Beli_Paket extends Model
{
    use HasFactory;

    protected $fillable = [
        'nama_paket',
        'total_user',
        'total_harga',
    ];
}
