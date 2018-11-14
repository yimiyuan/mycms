<?php if (!defined('TOKEN_IN')) exit(); ?><!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>homepage</title>
<link rel="stylesheet" type="text/css" href="<?php echo $this->vars["root"]; ?>/public/admin/css/index.css" />
<link rel="stylesheet" type="text/css" href="<?php echo $this->vars["root"]; ?>/public/admin/css/common.css" />
</head>
<body style="overflow:hidden;">
<!--go header -->
<div class="header">
	<div class="logo"></div>
    <div class="info"><div class="info_left">您好!超级管理员</div><!--<div class="info_right">退出</div>--></div>
    <div class="nav">
    	<ul>
        	<li class="hover"><a href="#" for="item_userinfo">基本信息</a></li>
            <li><a href="#" for="item_proinfo">产品管理</a></li> 
            <li><a href="#" for="item_store">加盟管理</a></li> 
            <li><a href="#" for="item_eye">爱眼中心</a></li> 
            <li><a href="#" for="item_comment">评论留言管理</a></li>
            <li><a href="#" for="item_deal">交易管理</a></li>
            <li><a href="#" for="item_face">界面管理</a></li>
        </ul>
    </div>
</div>
<!--end header -->

<!--go main -->
<div class="main">
	<!--go left_menu -->
	<div class="left_menu" id="item_userinfo" style="display:block;">
    	<h3 class="menu_title">基本信息<!--<span></span>--></h3>
        <ul>
        	<li class="title_hover"><a href="<?php echo $this->vars["root"]; ?>/index.php?r=admin/Index/show_userinfo" target="main_cont">基本信息</a></li>
            <li><a href="<?php echo $this->vars["root"]; ?>/index.php?r=admin/Index/update_userInfo" target="main_cont">修改密码</a></li>
         </ul>
         <div class="sys_exit" onclick="logout()"><a href="#">退出</a></div>
    </div>
    <div class="left_menu" id="item_proinfo">
    	<h3 class="menu_title">产品管理<!--<span></span>--></h3>
        <ul>
        	<li><a href="<?php echo $this->vars["root"]; ?>/index.php?r=admin/Index/show_product" target="main_cont">产品管理</a></li>
            <li><a href="<?php echo $this->vars["root"]; ?>/index.php?r=admin/Index/add_product" target="main_cont">添加产品</a></li>
        </ul>
        <div class="sys_exit" onclick="logout()"><a href="#">退出</a></div>
    </div>
    <div class="left_menu" id="item_store">
    	<h3 class="menu_title">加盟管理<!--<span></span>--></h3>
        <ul>
        	<li><a href="show_seller.html" target="main_cont">加盟商家</a></li>
            <li><a href="show_store.html" target="main_cont">店铺管理</a></li>
            <li><a href="show_meet.html" target="main_cont">预约管理</a></li>
            <li><a href="add_store.html" target="main_cont">添加店铺</a></li>
        </ul>
        <div class="sys_exit" onclick="logout()"><a href="#">退出</a></div>
    </div>
    <div class="left_menu" id="item_eye">
    	<h3 class="menu_title">爱眼中心管理<!--<span></span>--></h3>
        <ul>
        	<li><a href="eye_knowledge.html" target="main_cont">爱眼知识管理</a></li>
            <li><a href="add_knowledge.html" target="main_cont">添加爱眼知识</a></li>
            <li><a href="eye_video.html" target="main_cont">爱眼视频管理</a></li>
            <li><a href="add_video.html" target="main_cont">添加爱眼视频</a></li>
            <li><a href="eye_active.html" target="main_cont">爱眼活动管理</a></li>
            <li><a href="add_active.html" target="main_cont">添加爱眼活动</a></li>
        </ul>
        <div class="sys_exit" onclick="logout()"><a href="#">退出</a></div>
    </div>
    <div class="left_menu" id="item_comment">
    	<h3 class="menu_title">评论留言管理<!--<span></span>--></h3>
        <ul>
        	<li><a href="show_join_message.html" target="main_cont">加盟留言管理</a></li>
        	<li><a href="show_product_comment.html" target="main_cont">产品评论管理</a></li>
            <li><a href="show_store_comment.html" target="main_cont">店铺评论管理</a></li>
            <li><a href="show_online_message.html" target="main_cont">在线留言管理</a></li>
        </ul>
        <div class="sys_exit" onclick="logout()"><a href="#">退出</a></div>
    </div>   
    <div class="left_menu" id="item_deal">
    	<h3 class="menu_title">交易管理<!--<span></span>--></h3>
        <ul>
        	<li><a href="show_address.html" target="main_cont">收货地址管理</a></li>
        	<li><a href="show_car.html" target="main_cont">购物车管理</a></li>
            <li><a href="show_order.html" target="main_cont">订单管理</a></li>
        </ul>
        <div class="sys_exit" onclick="logout()"><a href="#">退出</a></div>
    </div>    
    <div class="left_menu" id="item_face">
    	<h3 class="menu_title">界面管理<!--<span></span>--></h3>
        <ul>
        	<li><a href="show_banner.html" target="main_cont">广告管理</a></li>
            <li><a href="add_banner.html" target="main_cont">添加广告</a></li>
        </ul>
        <div class="sys_exit" onclick="logout()"><a href="#">退出</a></div>
    </div>
    
    <!--go right_content-->
    <div class="right_content">
        <iframe id="main_cont" name="main_cont" frameborder="0" src="<?php echo $this->vars["root"]; ?>/index.php?r=admin/Index/show_userinfo" width="100%" height="100%"></iframe>
    </div>
    <!--end right_content-->
</div>
<!--end main -->
<script type="text/javascript" src="<?php echo $this->vars["root"]; ?>/public/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="<?php echo $this->vars["root"]; ?>/public/js/index.js"></script>
<script type="text/javascript" src="<?php echo $this->vars["root"]; ?>/public/js/core.js"></script>
<script type="text/javascript">
    function logout(obj){
        ajax('post',"<?php echo $this->vars["root"]; ?>/index.php?r=admin/Index/logout",{},function(data){
            if(data.status == 255){
                window.location.href = "<?php echo $this->vars["root"]; ?>/index.php?r=admin/Index/login";
            }
        },function(data){

        });
    }
</script>
</body>
</html>
