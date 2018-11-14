<?php if (!defined('TOKEN_IN')) exit(); ?><!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加产品信息</title>
<script type="text/javascript" src="<?php echo $this->vars["root"]; ?>/public/js/core.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo $this->vars["root"]; ?>/public/admin/css/common.css" />
<link rel="stylesheet" type="text/css" href="<?php echo $this->vars["root"]; ?>/public/admin/css/show_product.css" />
<style type="text/css">
td{height:30px;
}
td input{height:19px;width:200px;
}
td input.button{width:50px;
}
</style>
</head>
<body>
<!------------- go 右边主体层 ------------------>
<div class="right_content">
    <!---go 标题------>
    <div class="user_nav">
        <span class="your_pos"></span>
        <span>&nbsp;</span>
    </div>
    <!---end 标题------>
    <!---go 添加层------>
    <div class="con_manager" id="con_manager">
        <div class="show_product">
        	<div class="search_box">   	
                <div class="pro_search">
                    <div class="pro_name">添加产品</div>
                </div>
                <div class="add_list">
                     <form action="" method="post">
                        <table>
                            <tr><td class="add_left">商品编号:</td><td><input type="text" /></td></tr>
                            <tr><td class="add_left">商品名称:</td><td><input type="text" /></td></tr>
                            <tr><td class="add_left">商品总数:</td><td><input type="text" /></td></tr>
                            <tr><td class="add_left">销量:</td><td><input type="text" /></td></tr>
                            <tr><td class="add_left">库存:</td><td><input type="text" /></td></tr>
                            <tr><td class="add_left">图片:</td><td><input type="file" class="file"/></td></tr>
                            <tr><td class="add_left">原价:</td><td><input type="text" /></td></tr>
                            <tr><td class="add_left">促销价:</td><td><input type="text" /></td></tr> 
                            <tr><td class="add_left">颜色:</td><td><input type="text" /></td></tr>
                            <tr><td class="add_left">型号:</td><td><input type="text" /></td></tr>
                            <tr><td class="add_left">产品介绍:</td><td><textarea></textarea></td></tr>
                            <tr><td class="add_left">介绍视频:</td><td><input type="file" class="file" /></td></tr> 
                            <tr><td class="add_left"><input type="submit" value="提交" class="short_bt"/></td><td></td></tr> 
                        </table>
                    </form>
            	</div>
            </div>
        </div>
    </div>
    <!---end 添加层----->
</div>
<!------------- end 右边主体层 ------------------>
</body>
</html>
