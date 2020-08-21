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
        'ip',
        'params',
        'controller',
        'action',
        'item_id',
//        'body',
//        'header',
//        'status_code',
//        'response_body',
    ];

    public function user() {
        return $this->belongsTo(User::class);
    }

}
