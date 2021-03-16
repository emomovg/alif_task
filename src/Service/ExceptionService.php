<?php

class ExceptionService
{
    public static function error(Exception $e) {
        http_response_code($e->getCode());
         $code =$e->getCode();
        $message = $e->getMessage();
        include_once __DIR__. "/../../view/400.php";
    }
}