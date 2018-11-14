<?php if (!defined('TOKEN_IN')) exit(); ?><!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>查看用户相关信息</title>
<link rel="stylesheet" type="text/css" href="<?php echo $this->vars["root"]; ?>/public/admin/css/common.css" />
<link rel="stylesheet" type="text/css" href="<?php echo $this->vars["root"]; ?>/public/admin/css/show_product.css" />
<script type="text/javascript" src="<?php echo $this->vars["root"]; ?>/public/js/core.js"></script>
</head>
<body>
<!------------- go 右边主体层 ------------------>
<input type="hidden" value="<?php echo $this->vars["root"]; ?>" id="root" />
<div class="right_content">
	<!---go 标题------>
    <div class="user_nav">
        <span class="your_pos">当前位置:</span>
        <span>>&nbsp;用户详细信息</span>
    </div>
    <!---end 标题------>
    <!---go 列表层------>
    <div class="con_manager" id="con_manager">
        <div class="show_product">
        	<div class="search_box">
            	<!---go 查询层------>
                <!--
                <div class="pro_search">
                    <div class="pro_name">
                    	用户名&nbsp;<input type="text" />
                    </div>
                    <div>
                        性别&nbsp;
                        <select>
                            <option>-----请选择-----</option>
                            <option>男</option>
                            <option>女</option>
                        </select>
                    </div>
                    <div><input class="short_bt" type="submit" value="查询"/></div>
                </div>-->
                 <!---end 查询层------>    
                 <div class="pro_list">
                    <table>
                        <tr class="tr_title"><td>用户名</td><td>真实姓名</td><td>性别</td><td>email</td><td>电话</td><td>地址</td>
                        <td class="td_110">操作</td></tr>
                        <?php
                            foreach($this->vars['users'] as $k=>$v){
                        ?>
                        <tr><td><?php echo $v['username']; ?></td><td><?php echo $v['realname']; ?></td><td><?php echo $v['sex']=1?'男':'女'; ?></td><td><?php echo $v['email']; ?></td>
                            <td><?php echo $v['phone']; ?></td><td>青羊区</td>
                            <td><a href="javascript:void(0);" onclick="delUser(this)" id="id_<?php echo $v['admin_id'];?>">删除</a></td></tr>
                        <?php
                        }
                        ?>
                        <tr><td colspan="7" style="text-align: right;padding-right:10px;"><?php echo $this->vars["page"]; ?></td></tr>
                    </table>
            	</div>
            </div>
        </div>
    </div>
    <!---end 列表层 ----->
</div>

<script type="text/javascript">
    var root = getValue('root');
    function delUser(obj){
        var user_id = obj.id.substring(3);
        var params = {'admin_id':user_id};
        ajax('post' , root+'/index.php?r=admin/Ajax/delete_user' , params , function(data){
            alert(data.message);
            window.open(root+'/index.php?r=admin/Index/show_users&p=<?php echo $this->vars["current"]; ?>','_self');
            return;
        },function(message){
            alert(message);return;
        });
    }
</script>


<!------------- end 右边主体层 ------------------>
</body>
</html>
