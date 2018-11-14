<?php
/** 初始化类空间model下的类 */
namespace model;

class Init{

    private static $_instance = array();

    private static $class = null;

    /** 实例化类,实例化空间为'model'下的类 */
    public static function instance($class){
        if(!@(self::$_instance[$class])) {
            self::$class = '\model\\' . $class;
            self::$_instance[$class] = new self::$class();
        }
        return self::$_instance[$class];
    }




}