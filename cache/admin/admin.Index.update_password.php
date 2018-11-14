<?php if (!defined('TOKEN_IN')) exit(); ?><!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改密码</title>
<link rel="stylesheet" type="text/css" href="<?php echo $this->vars["root"]; ?>/public/admin/css/common.css" />
<link rel="stylesheet" type="text/css" href="<?php echo $this->vars["root"]; ?>/public/admin/css/update_userinfo.css" />
<script type="text/javascript" src="<?php echo $this->vars["root"]; ?>/public/js/core.js"></script>
<style type="text/css">
td{height:30px;
}
td input{height:19px;
}
</style>
</head>
<body>
<!-- go  密码修改 -->
<div class="right_content">
    <div class="user_nav">
        <span class="your_pos">当前位置:</span>
        <span>>&nbsp;修改密码</span>
    </div>
    <div class="con_manager" id="con_manager">
        <div class="show_userinfo">
        	<form action="<?php echo $this->vars["root"]; ?>/index.php?r=admin/Index/edit_password" method="post" id="edit_form">
                <table>
                    <tr><td class="td_100">旧密码</td><td><input class="width_200" type="password" id="old_password" name="old_password"/></td></tr>
                    <tr><td class="td_100">新密码</td><td><input class="width_200" type="password" id="new_password" name="new_password"/></td></tr>
                    <tr><td class="td_100">重复密码</td><td><input class="width_200" type="password" id="repassword" name="repassword"/></td></tr>
                    <tr><td class="td_100"><input class="short_bt" onclick="checkInfo();" type="button" value="提交"/></td><td></td></tr>
                </table>
            </form>
        </div>
    </div>
</div>
<!-- end  密码修改 -->
<script type="text/javascript">
    var form = document.getElementById('edit_form');
    function checkInfo(){
        var old_password = getValue('old_password');
        var new_password = getValue('new_password');
        var new_password = getValue('repassword');
        if('' == old_password || '' == new_password || '' == new_password){
            alert('不能有空值!');
        }else if(new_password != new_password){
            alert('新密码必须和重复密码相同');
        }else{
            form.submit();
        }
    }



</script>
</body>
</html>
