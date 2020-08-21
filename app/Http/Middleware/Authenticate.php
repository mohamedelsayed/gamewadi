<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;
use App\Http\Business\LogBusiness;

class Authenticate extends Middleware {

    /**
     * Get the path the user should be redirected to when they are not authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return string
     */
    protected function redirectTo($request) {
        if (!$request->expectsJson()) {
            return url('admin/login');
        }
    }

    public function terminate($request, $response) {
        $logBusiness = new LogBusiness();
        $logBusiness->addLog();
    }

}
