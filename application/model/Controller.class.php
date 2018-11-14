<?php
/*** 控制器父类,负责页面显示跳转 */
namespace model;
class Controller{

    /** 模板对象Template */
    private $template = null;
    public  $token = '';

    /*** 功能 : 显示视图 */
    public function display($view){
        $this->template = Init::instance('Template');
        $this->template->display($view);
    }

    /*** 功能 : 模板变量赋值 */
    public function assign($tpl_var , $value = null){
        $this->template = Init::instance('Template');
        $this->template->assign($tpl_var , $value);
    }

    /** 页面跳转 , $url , 为 Index.index类型 , $params参数数组 , $delay 延迟多少秒*/
    public function redirect($url = '' , $params = array(), $delay = 0 ){
        redirect(U($url , $params) , $delay);
    }

    /** 生成token */
    public function _createToken(){
        if(TOKEN_ON){
            if(empty($this->token)){
                $this->token = md5(_TOKEN) . md5('token');
            }
        }
    }

    /** 核查token */
    public function _checkToken($token = ''){
        if($token == $this->token){
            return true;
        }else{
            return false;
        }
    }
}