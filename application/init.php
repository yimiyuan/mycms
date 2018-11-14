<?php
/**
 * @author jimliu
 * Date: 2017/7/21
 * 功能: 引入公共类库
 */
require "constant.php";
require "common.php";
load_config(); /** 初始化配置参数 */
load_class(SOCK);
load_class(MODEL);
load_class(ADMIN);
load_class(HOME);
isset($_SESSION) or session_start();
$urlInfo = @$_GET['r'];
if(empty($urlInfo)){
    $urlInfo = 'admin/Index/index';
}
$router = router($urlInfo);       /** 得到请求地址路由参数和请求参 */
C('ACTION_BLOCK' , $router['block']);      /** 设置默认模块 */
$allow = array('home' , 'admin');                                       /**允许访问的模块 */
if(!in_array($router['block'],$allow)){
    error_handler('no promise to this block!');
}
defined('TOKEN_IN') or define('TOKEN_IN' , true);
defined('TEMPLATE') or define('TEMPLATE' , $router['block']);
defined('MODEL_NAME') or define('MODEL_NAME' , $router['class']);
defined('MODEL_ACTION') or define('MODEL_ACTION' , $router['method']);
$controller = 'controller\\'.$router['block'].'\\'.$router['class'].'Controller';
if(class_exists($controller, false)) {
    $class = new $controller();
    if(method_exists($class , $router['method'])){
        call_user_func(array($class , $router['method']));
    }else{
        error_handler('method of ' . $router['method'] . ' not exists!');
    }
}else{
    error_handler('class of ' . $router['class'] . ' not exists!');
}

































