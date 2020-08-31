<?php

namespace App\Http\Business;

//use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use libphonenumber\PhoneNumberUtil;

class MobileBusiness extends Controller {

    public function validateMobile($mobile = null, $countryCode = null, $phoneType = 'mobile') {
        $message = __("$phoneType number is invalid.");
        $error = true;
        if (!is_null($countryCode) && !is_null($mobile) && $phoneType == 'mobile') {
            if (startsWith($countryCode, "+")) {
                if ($this->isCompletePhoneNumber($mobile, $countryCode, $phoneType)) {
                    $message = '';
                    $error = false;
                }
            }
        } elseif (!is_null($mobile) && $phoneType == 'phone') {
            if (checkCountryCodeForPhone($mobile)) {
                if ($this->isCompletePhoneNumber($mobile, $countryCode, $phoneType)) {
                    $message = '';
                    $error = false;
                }
            }
        }
        $data = [];
        $data['msg'] = $message;
        $data['error'] = $error;
        return $data;
    }

    public function isCompletePhoneNumber($mobile = null, $countryCode = null, $phoneType = 'mobile') {
        $phoneUtil = PhoneNumberUtil::getInstance();
        if ($phoneType == 'mobile') {
            $phoneNumber = $countryCode . $mobile;
        } else {
            $phoneNumber = $mobile;
        }
        try {
            $numberObject = $phoneUtil->parse($phoneNumber);
        } catch (\libphonenumber\NumberParseException $ex) {
            return false;
        }
        if ($phoneUtil->isPossibleNumber($numberObject) && $phoneUtil->isValidNumber($numberObject)) {
            $type = $phoneUtil->getNumberType($numberObject);
            if (($phoneType == 'phone' && ($type == 0 || $type == 2)) || ($phoneType == 'mobile' && ($type == 1 || $type == 2))) {
                return true;
            }
        }
        return false;
    }

//    public function formatPhoneNumber(String $phoneNumber) {
//        $phoneUtil = PhoneNumberUtil::getInstance();
//        try {
//            $numberObject = $phoneUtil->parse($phoneNumber, NULL);
//        } catch (Exception $ex) {
//            return $phoneNumber;
//        }
//        return $phoneUtil->format($numberObject, \libphonenumber\PhoneNumberFormat::INTERNATIONAL);
//    }
}
