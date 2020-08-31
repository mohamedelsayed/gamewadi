<?php

use Cocur\Slugify\Slugify;

if (!function_exists('pr')) {

    /**
     * description Print array in readable format
     *
     * @param array
     * @return null
     */
    function pr($arr) {
        echo '<pre>';
        print_r($arr);
        echo '</pre>';
    }

}
if (!function_exists('getCountriesPhoneCodes')) {

    function getCountriesPhoneCodes() {
        $countries = new PragmaRX\Countries\Package\Countries();
        $codes = [];
        foreach ($countries->all() as $country) {
//            $codes[$country['name']['common']] = null;
            if (isset($country['dialling']['calling_code'][0])) {
                if (trim($country['dialling']['calling_code'][0]) != '') {
                    $codes[$country['name']['common']] = '+' . $country['dialling']['calling_code'][0];
                }
            }
        }
        return $codes;
    }

}
if (!function_exists('getCountries')) {

    function getCountries() {
        $countries = new PragmaRX\Countries\Package\Countries();
        return $countries->all();
    }

}
if (!function_exists('getCountryCities')) {

    function getCountryCities($countery = null) {
        if ($countery == null) {
            return [];
        }
        $countries = new PragmaRX\Countries\Package\Countries();
        $counteryObj = $countries->where('cca2', $countery)
                ->first();
        if (empty($counteryObj->items)) {
            $counteryObj = $countries->where('name.common', $countery)
                    ->first();
        }
        if (!is_null($counteryObj) && !is_null($counteryObj->hydrate('cities')->cities)) {
            $cities = $counteryObj->hydrate('cities')->cities;
            $citiesIn = [];
            foreach ($cities as $key => $value) {
                $citiesIn[] = [
                    'name' => $value['name'],
//                'cca3' => $value['cca3']
                ];
            }
            return $citiesIn;
        }
        return [];
    }

}
if (!function_exists('generateRandomString')) {

    /**
     * description genertae random string
     *
     * @param
     * @return
     */
    function generateRandomString($n = 10, $charactersOnly = false, $numbersOnly = false) {
        if ($charactersOnly == true && $numbersOnly == false) {
            $characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        } elseif ($charactersOnly == false && $numbersOnly == true) {
            $characters = '0123456789';
        } else {
            $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        }
        $randomString = '';
        for ($i = 0; $i < $n; $i++) {
            $index = rand(0, strlen($characters) - 1);
            $randomString .= $characters[$index];
        }
        return $randomString;
    }

}


if (!function_exists('slugify')) {

    /**
     * description slugify string and return it
     *
     * @param str
     * @return str
     */
    function slugify($str) {
        if (isset($str)) {
            $slugify = new Slugify();
            return $slugify->slugify($str);
        }
        return null;
    }

}