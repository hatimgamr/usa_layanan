<?php

namespace App\Models;

use CodeIgniter\Model;

class PhoneModel extends Model
{
    protected $table            = 'phone';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $allowedFields    = ['id', 'nama', 'merek', 'tinggi', 'lebar', 'screen-type', 'battery', 'created_at', 'updated_at'];


    protected $useTimestamps = true;
    protected $dateFormat    = 'datetime';
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';
}
