<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Http\Business\CurrencyBusiness;

class updateCurrency extends Command {

    protected $signature = 'currency:update';
    protected $description = 'update currency';

    public function __construct() {
        parent::__construct();
    }

    public function handle() {
        $currencyBusiness = new CurrencyBusiness();
        $currencyBusiness->handleUpdateCurrency();
    }

}
