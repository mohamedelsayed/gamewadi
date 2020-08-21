<?php

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