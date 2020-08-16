<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use App\Models\Core\Log;

class Controller extends BaseController {

    use AuthorizesRequests,
        DispatchesJobs,
        ValidatesRequests;

    public function __construct() {
        $this->log();
    }

    public function callApi($api = null, $type = 'GET', $data = []) {
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => $api,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => $type,
            CURLOPT_POSTFIELDS => $data,
        ));
        $response = curl_exec($curl);
        curl_close($curl);
//        pr($response);
        $array_result = json_decode($response, true);
        if (!$response || empty($array_result)) {
            return false;
        }
        return $array_result;
    }

    public function printLog($data) {
        print ( "[" . date("Y-m-d H:i:s") . "] -- " . $data . PHP_EOL);
    }

    public function log() {
        if (!isset($GLOBALS['logCalled'])) {
            $user_id = null;
            if (request()->user()) {
                $user_id = request()->user()->id;
            }
//            echo 'aaa';
//            print_r(auth()->user());
//            exit;
            $GLOBALS['logCalled'] = 1;
            $request = request();
//            $response = response()->json();
            $log = new Log();
            $log->url = $request->fullUrl();
            $log->method = $request->method();
//            $log->body = json_decode($request->getContent(), true);
            $log->params = $request->all();
//            $log->header = $request->header();
            $log->ip = $request->ip();
            $log->user_id = $user_id;
//            $log->status_code = $response->getStatusCode();
//            $log->response_body = json_decode($response->getContent(), true);
//            $log->save();
        }
    }

}
