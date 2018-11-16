<?php

header("content-type:text/html;charset=utf-8");

foreach($_SERVER as $k=>$v){
    var_dump($k . "======" .$v);//test
}
