<?php
namespace controller\admin;
use model;
class AjaxController extends model\Controller{
    public function __construct(){
        $this->mysql = new model\Mysql();
    }
    /** 删除id为$id的用户*/
    public function delete_user(){
        $res = $this->mysql->deleteById('yby_admin','admin_id',_post('admin_id'));
        if($res){
            echo_ok('删除成功!');
        }else{
            echo_error('删除失败!');
        }
    }



}