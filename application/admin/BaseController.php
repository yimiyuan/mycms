<?php
namespace controller\admin;
use model;

class BaseController extends model\Controller{
    /** 验证权限 */
    public function _right(){
        if(session('username') && session('password')){
            return true;
        }else{
            return false;
        }
    }

}