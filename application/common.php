<?php
/**
 * author: jimliu
 * Date: 2017/7/21
 * 基础函数库,在任何地方均可调用
 */

/** 获取GET或者POST请求参数,没有或参数错误返回空; */
function getParam($param){
    if($_SERVER['REQUEST_METHOD'] == 'GET'){
        return $_GET[$param];
    }else if($_SERVER['REQUEST_METHOD'] == 'POST'){
        return $_POST[$param];
    }else{
        return null;
    }
}

/** 初始化mysql模型 */
function M($table=''){
    static $_model = array();
    if (!isset($_model[$table])) {
        $_model[$table] = new model\Mysql($table);
    }
    return $_model[$table];
}

/** 组装,生成url路径 例如: U("Index.index")*/
function U($params = '' , $var = ''){
    $url = $_SERVER['REQUEST_SCHEME'].":".DS.DS.$_SERVER['HTTP_HOST'].":".$_SERVER['SERVER_PORT'];
    if(empty($params)){
        return $url . $_SERVER['REQUEST_URI'];
    }
    $path = explode('.' , $params);
    if(count($path) > 3 || count($path) < 2){
        error_handler('调用U()方法传值出错!');
    }
    C('ACTION_METHOD' , array_pop($path)); /** 设置方法 */
    C('ACTION_CLASS' , array_pop($path)); /** 设置类 */
    C('ACTION_BLOCK' , empty($path[0])?C('ACTION_BLOCK'):$path[0]); /** 属于哪个模块 */
    $url .= $_SERVER['SCRIPT_NAME'] . "?r=" . C('ACTION_BLOCK') . DS . C('ACTION_CLASS') . DS . C('ACTION_METHOD');
    if(empty($url)){
        return $url;
    }
    if(is_string($var)){
        parse_str($var , $query);
        $url .= '&' . http_build_query($query);
    }
    if(is_array($var)){
        $url .= '&' . http_build_query($var);
    }
    return rtrim($url,'&');
}

function load_config(){
    if(file_exists(APPLICATION . DS . 'database.php')){
        C(require APPLICATION . DS . 'database.php');
    }
}

/** $name 数组或者字符串,当$name和$value都为字符串时,$name为键,$value为值; 当$name为数组时,直接把$name数据合并到初始化数组中 */
function C($name = null , $value = null){
    static $_config = array();
    if(empty($name)){
        return $_config;
    }
    if(is_string($name) && empty($value)){
        return isset($_config[$name]) ? $_config[$name] : null;
    }
    if(is_string($name) && is_string($value)){
        $_config[$name] = $value;
    }
    if(is_array($name)){
        $_config = array_merge($_config , $name);
    }
}

/** 邮箱验证 , 返回回0(false)或1(true) **/
function check_email($email){
    $pattern = "/^[a-zA-Z0-9]+@([a-zA-Z0-9]+.)([a-z]{3,4})$/i";
    return preg_match($pattern,$email);
}

/** 页面跳转 */
function redirect($url = '' , $time = 0){
    if(!headers_sent()){
        header('Content-Type: text/html; charset=utf-8');
        if(0 == $time){
            header('Location:' . $url);
        }else{
            header("Refresh: $time; url=$url");
        }
    }else{
        $string = "<meta http-equiv='Refresh' content='{$time};URL={$url}'>";
        exit($string);
    }
}

/** 成功输出内容 */
function ajax($data = array() , $message = '' , $status = 255){
    echo json_encode(array('status'=>$status , 'message'=>$message , 'data'=>$data)); exit;
}

/** 错误输出提示内容 */
function message($message = '' , $status = 200){
    echo json_encode(array('status'=>$status , 'message'=>$message));exit;
}

/** @$url 参数数组 例如: 路径为: 传入这个的值 : $_SERVER['REQUEST_URI'] */
function router($url){
    $params = array();              /** 路由和参数值 */
    $errorMessage = 'url error ,  Correct format : "http://domain/index.php?r=admin/Index/index&param=1"';
    $controller = explode('/' , trim($url , '/'));
    if(sizeof($controller) == 3){
        $params['block'] = $controller[0];
        $params['class'] = $controller[1];
        $params['method'] = $controller[2];
    }else{
        error_handler($errorMessage);
    }
    return $params;
}

/**$message 错误提示信息 , @throws Exception */
function error_handler($message = ''){
    if(is_string($message)){
        echo 'current error : ' . $message;exit;
    }
}

/*** @param $dir 目录 , 功能: 加载指定目录下的类 */
function load_class($dir){
    if(file_exists($dir)){
        $temp = dir($dir);
        while($filename = $temp->read()){
            if($filename != '.' && $filename != '..'){
                require_once $dir . DS . $filename;
            }
        }
        $temp->close();
    }else{
        error_handler('dir not exists : ' . $dir);
    }
}

/** 获取或者设置session值 */
function session($key , $value = null){
    if(empty($value)){
        return @$_SESSION[$key];
    }else{
        $_SESSION[$key] = $value;
    }
}

function request($key){
    $value = '';
    if(!empty($key)){
        if($_SERVER['REQUEST_METHOD'] == 'POST'){
            $value = @$_POST[$key];
        }elseif($_SERVER['REQUEST_METHOD'] == 'GET'){
            $value = @$_GET[$key];
        }
    }
    return $value;
}

/**
 * 安全过滤函数,过滤sql注入漏洞
 * @param $string
 * @return string
 */
function safe_replace($string) {
    $string = str_replace('%20','',$string);
    $string = str_replace('%27','',$string);
    $string = str_replace('%2527','',$string);
    $string = str_replace('*','',$string);
    $string = str_replace('"','&quot;',$string);
    $string = str_replace("'",'',$string);
    $string = str_replace('"','',$string);
    $string = str_replace(';','',$string);
    $string = str_replace('<','&lt;',$string);
    $string = str_replace('>','&gt;',$string);
    $string = str_replace("{",'',$string);
    $string = str_replace('}','',$string);
    $string = str_replace('\\','',$string);
    $string = str_replace(' ','',$string);
    $string = str_replace('=','',$string);
    $string = str_replace('(','',$string);
    $string = str_replace('0x','',$string);
    $string = str_replace(' or ','',$string);
    return $string;
}

/**
 * xss过滤函数
 * @param $string
 * @return string
 */
function remove_xss($string) {
    $string = preg_replace('/[\x00-\x08\x0B\x0C\x0E-\x1F\x7F]+/S', '', $string);
    $parm1 = Array('javascript', 'vbscript', 'expression', 'applet', 'meta', 'xml', 'blink', 'link', 'script', 'embed', 'object', 'iframe', 'frame', 'frameset', 'ilayer', 'layer', 'bgsound', 'title', 'base');
    $parm2 = Array('onabort', 'onactivate', 'onafterprint', 'onafterupdate', 'onbeforeactivate', 'onbeforecopy', 'onbeforecut', 'onbeforedeactivate', 'onbeforeeditfocus', 'onbeforepaste', 'onbeforeprint', 'onbeforeunload', 'onbeforeupdate', 'onblur', 'onbounce', 'oncellchange', 'onchange', 'onclick', 'oncontextmenu', 'oncontrolselect', 'oncopy', 'oncut', 'ondataavailable', 'ondatasetchanged', 'ondatasetcomplete', 'ondblclick', 'ondeactivate', 'ondrag', 'ondragend', 'ondragenter', 'ondragleave', 'ondragover', 'ondragstart', 'ondrop', 'onerror', 'onerrorupdate', 'onfilterchange', 'onfinish', 'onfocus', 'onfocusin', 'onfocusout', 'onhelp', 'onkeydown', 'onkeypress', 'onkeyup', 'onlayoutcomplete', 'onload', 'onlosecapture', 'onmousedown', 'onmouseenter', 'onmouseleave', 'onmousemove', 'onmouseout', 'onmouseover', 'onmouseup', 'onmousewheel', 'onmove', 'onmoveend', 'onmovestart', 'onpaste', 'onpropertychange', 'onreadystatechange', 'onreset', 'onresize', 'onresizeend', 'onresizestart', 'onrowenter', 'onrowexit', 'onrowsdelete', 'onrowsinserted', 'onscroll', 'onselect', 'onselectionchange', 'onselectstart', 'onstart', 'onstop', 'onsubmit', 'onunload');
    $parm = array_merge($parm1, $parm2);
    for ($i = 0; $i < sizeof($parm); $i++) {
        $pattern = '/';
        for ($j = 0; $j < strlen($parm[$i]); $j++) {
            if ($j > 0) {
                $pattern .= '(';
                $pattern .= '(&#[x|X]0([9][a][b]);?)?';
                $pattern .= '|(&#0([9][10][13]);?)?';
                $pattern .= ')?';
            }
            $pattern .= $parm[$i][$j];
        }
        $pattern .= '/i';
        $string = preg_replace($pattern, ' ', $string);
    }
    return $string;
}











