<?php

namespace App\Http\Business;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class CurrencyBusiness extends Controller {

    public function handleUpdateCurrency() {
        $egp = 'EGP';
        $usd = 'USD';
        $key = \Config::get('currencylayer.key');
//        $this->printLog($key);
        $api = 'http://apilayer.net/api/live?access_key=' . $key . '&currencies=' . $egp . '&source=' . $usd . '&format=1';
        $result = $this->callApi($api, 'GET');
//        print_r($result);
        if ($result && $result['success'] == 1) {
            if (isset($result['quotes']['USDEGP'])) {
                $egpRate = $result['quotes']['USDEGP'];
                $this->printLog($egpRate);
                DB::table('currencies')
                        ->where('code', $egp)
                        ->update(['value' => $egpRate]);
            }
        }
    }

}
