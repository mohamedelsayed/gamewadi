<?php

namespace App\Http\Business;

use App\Http\Controllers\Controller;
use App\Models\Core\Log;
use Auth;
use App\Models\Core\Setting;

class LogBusiness extends Controller {

    public function addLog() {
        if (!isset($GLOBALS['logCalled'])) {
            $userId = null;
            if (Auth::user()) {
                $userId = Auth::user()->id;
            }
            $routeArray = app('request')->route()->getAction();
            $controllerAction = class_basename($routeArray['controller']);
            list($controller, $action) = explode('@', $controllerAction);
            $GLOBALS['logCalled'] = 1;
            $request = request();
//            $response = response()->json();
            $log = new Log();
            $log->url = $request->fullUrl();
            $log->method = $request->method();
            $itemId = $request->id;
//            $log->body = json_decode($request->getContent(), true);
            $log->params = serialize($request->all());
//            $log->header = $request->header();
            $log->ip = $request->ip();
            $log->user_id = $userId;
            $log->controller = str_replace('Controller', '', $controller);
            $log->action = $action;
            $log->item_id = $itemId;
//            $log->status_code = $response->getStatusCode();
//            $log->response_body = json_decode($response->getContent(), true);
            $log->save();
        }
    }

    public function cleanLog() {
        $setting = Setting::where("name", Setting::AUTOMATIC_CLEAN_LOG)->first();
        if (!empty($setting)) {
            $automatic_clean_log = $setting->value;
        }
        if ($automatic_clean_log == 1) {
            $days = 7; //week
            $formatted = date('Y-m-d H:i:s', strtotime('-' . $days . ' days'));
//            pr($formatted);
            Log::where('created_at', '<=', $formatted)->forceDelete();
        }
    }

}
