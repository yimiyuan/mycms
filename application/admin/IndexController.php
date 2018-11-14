<?php

namespace controller\admin;
use model;

class IndexController extends BaseController{

    /** 数据库连接对象类 */
    public $mysql = null;

    public function __construct(){
        $this->assign('username','');
        $this->assign('code','');
        $this->assign('password','');
        $this->assign('message','');
        $this->mysql = new model\Mysql();
    }

    /** 后台管理首页 */
    public function index(){
        if(!$this->_right()){
            $this->display('Index.login');
        }
        $this->display('Index.index');
    }

    /** 登录验证页面 */
    public function login(){
        $this->display('Index.login');
    }

    /** 注销登录 */
    public function logout(){
        unset($_SESSION['username']);
        unset($_SESSION['password']);
        message('success' , 255);
    }

    /** 生成验证码 */
    public function createCode(){
        $tool = new model\Tools;
        $tool->creatCode();
    }

    /** 登录处理 */
    public function loginController(){
        if($_SESSION['check_code'] != request('code')){
            message('验证码错误!' , 200);
        }
        $uuid = M('yby_admin')->where('username',request('username'))->where('password' , md5(request('password')))->fetch('uuid');
        if(empty($uuid)){
            message('用户或者密码不对!' , 200);
        }
        session('username',request('username'));
        session('password',request('password'));
        message("登录成功!" , 255);
    }

    /** 产品列表页面 */
    public function show_product(){
        if(!$this->_right()){
            $this->display('Index.login');
        }
        if(request('keyword')){
            $count = M('yby_product')->like("name like '%" . request('keyword') . "%'")->count();
            $model = M('yby_product')->like("name like '%" . request('keyword') . "%'");
        }else{
            $count = M('yby_product')->count();
            $model = M('yby_product');
        }
        $model->getPageData($count , request('p')?request('p'):1);
        $this->assign('page' , $model->pageHtml);
        $this->assign('products' , $model->pageData);
        $this->display('Index.show_product');
    }

    /** 添加产品页面 */
    public function add_product(){
        if(!$this->_right()){
            $this->display('Index.login');
        }
        $this->display();
    }

    /** 用户信息显示页面 */
    public function show_userinfo(){
        if(!$this->_right()){
            $this->display('Index.login');
        }
        $userInfo = M('yby_admin')->where('username' , session('username'))->fetchOne();
        $this->assign("userInfo" , $userInfo);
        $this->display('Index.show_userinfo');
    }

    /**修改密码功能*/
    public function update_password(){
        if(!$this->_right()){
            $this->display('Index.login');
        }
        $uuid = M('yby_admin')->where('username',session('username'))->where('password',md5(request('password')))->fetch('uuid');
        if(empty($uuid)){
            message('密码错误!' , 200);
        }
        $count = M('yby_admin')->where('username',session('username'))->update(array('password'=>md5(request('new_password'))));
        if(!$count){
            message('修改失败!' , 200);
        }
        message('修改成功!' , 255);
    }

    /** 修改密码页面 */
    public function update_userInfo(){
        if(!$this->_right()){
            $this->display('Index.login');
        }
        $this->display("Index.update_userInfo");
    }

}