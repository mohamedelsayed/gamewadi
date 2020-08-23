<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Http\Business\LogBusiness;

class cleanLog extends Command {

    protected $signature = 'log:clean';
    protected $description = 'clean log automatic every week.';

    public function __construct() {
        parent::__construct();
    }

    public function handle() {
        $logBusiness = new LogBusiness();
        $logBusiness->cleanLog();
    }

}
