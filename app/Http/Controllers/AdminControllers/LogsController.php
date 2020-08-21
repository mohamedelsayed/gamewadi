<?php

namespace App\Http\Controllers\AdminControllers;

use App\Http\Controllers\AdminControllers\SiteSettingController;
use App\Http\Controllers\Controller;
use App\Models\Core\Log;
use Illuminate\Http\Request;
use Lang;

class LogsController extends Controller {

    public function __construct() {
        parent::__construct();
    }

    //actionslog
    public function actionslog(Request $request) {
        $title = array('pageTitle' => Lang::get("labels.Actions Log"));
        $logs = Log::orderby('created_at', 'DESC')
                ->paginate(10);
        $result['logs'] = $logs;
        //get function from other controller
        $myVar = new SiteSettingController();
//        $result['currency'] = $myVar->getSetting();
        $result['commonContent'] = $myVar->Setting->commonContent();
        return view("admin.logs.actionslog", $title)->with('result', $result);
    }

}
