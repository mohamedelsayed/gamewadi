<?php

namespace App\Models\Core;

use Illuminate\Database\Eloquent\Model;

//use Illuminate\Support\Facades\DB;

class Log extends Model {

    protected $table = 'logs';
    protected $fillable = [
        'user_id',
        'url',
        'method',
//        'body',
//        'header',
        'ip',
//        'status_code',
//        'response_body',
        'params'
    ];

}
