<?php if (!defined('TOKEN_IN')) exit(); ?><!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link href="<?php echo $this->vars["root"]; ?>/public/admin/css/admin_login.css" type="text/css" rel="stylesheet"/>
</head>
<body>

<!-- start 后台登陆页面 -->
<input type="hidden" value="<?php echo $this->vars["root"]; ?>" id="root" />
<div class="admin_login">
	<div class="login_left">
    <form>
    	<div class="username"><input type="text" name="username" id="username" value="<?php echo $this->vars["username"]; ?>"/></div>
        <div class="password"><input type="password" name="password"  id="password" value="<?php echo $this->vars["password"]; ?>"/></div>
        <div class="checkcode">
 			<div class="code_input"><input type="text" name="code" id="code" value="<?php echo $this->vars["code"]; ?>"/></div>
            <div class="code_img"><img src="<?php echo $this->vars["root"]; ?>/index.php?r=admin/Index/createCode" border="0" onclick="createUrl(this);" /></div>
        </div>
    </form>
    </div>
    <div class="login_right" onClick="sub();"></div>
    <div class="error_message"><?php echo $this->vars["message"]; ?></div>
</div>

<!-- end  后台登陆页面 -->

<script type="text/javascript" src="<?php echo $this->vars["root"]; ?>/public/js/core.js"></script>
<script type="text/javascript">
    /** 提交表 */
    function sub(){
        var root = getValue('root');
        var username = getValue('username');
        var password = getValue('password');
        var code = getValue('code');
        if(!username){
            alert('请输入用户名!');return;
        }
        if(!password){
            alert('请输入密码!');return;
        }
        if(!code){
            alert('请输入验证码!');return;
        }
	    var params = {'username':username , 'password':password , 'code':code};
        ajax('post' , root+'/index.php?r=admin/Index/loginController' , params , function(data){
            if(data.status == 255){
                window.location.href = root + '/index.php?r=admin/Index/index';
            }else{
                alert(data.message);
            }
        },function(data){
            alert(data.message);return;  /** 验证失败 */
        });
    }
    /** 刷新验证码 */
    function createUrl(obj){
        if(obj.src.indexOf('fresh')){
            var urlArray = obj.src.split('fresh');
            obj.src = urlArray[0] + '&fresh' + Math.random();
        }else{
            obj.src = obj.src + '&fresh=' + Math.random();
        }
    }

    /** 回车键提交  */
    document.onkeydown=keyDownSearch;
    function keyDownSearch(e) {
        var theEvent = e || window.event; /** 兼容FF和IE和Opera */
        var code = theEvent.keyCode || theEvent.which || theEvent.charCode;
        if (code == 13) {
            sub();
            return false;
        }
        return true;
    }

</script>


</body>
</html>

