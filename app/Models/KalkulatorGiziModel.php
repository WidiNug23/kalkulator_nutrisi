<?php

namespace App\Models;

use CodeIgniter\Model;

class KalkulatorGiziModel extends Model
{
    protected $table = 'kebutuhan_gizi';
    protected $primaryKey = 'id';
    protected $allowedFields = ['gender', 'weight', 'height', 'age', 'activity_level', 'tdee', 'carbs', 'protein', 'fat'];
}

