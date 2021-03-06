<?php if (!defined('TOKEN_IN')) exit(); ?><!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>查看产品相关信息</title>
<link rel="stylesheet" type="text/css" href="<?php echo $this->vars["root"]; ?>/public/admin/css/common.css" />
<link rel="stylesheet" type="text/css" href="<?php echo $this->vars["root"]; ?>/public/admin/css/show_product.css" />
</head>
<body>
<!------------- go 右边主体层 ------------------>
<div class="right_content">
    <!---go 列表层------>
    <div class="con_manager" id="con_manager">
        <div class="show_product">
        	<div class="search_box">
            	<!---go 查询层------>
                <div class="pro_search">
                    <form action="<?php echo $this->vars["root"]; ?>/index.php?r=admin/Index/show_product" method="get">
                        <div class="pro_name">
                            产品名称&nbsp;<input name="keyword" type="text" />
                        </div>
                        <div><input class="short_bt" type="submit" value="查询"/></div>
                    </form>
                </div>
                 <!---end 查询层------>    
                 <div class="pro_list">
                    <table>
                        <tr class="tr_title"><td>商品编号</td><td>商品型号</td><td>商品名称</td><td>商品总数</td><td>销量</td><td>价格</td><td class="td_110">操作</td></tr>
                        <?php
                            foreach($this->vars['products'] as $k=>$v){
                                $str = "<tr><td>".$v['product_id']."</td><td>".$v['number']."</td><td>".$v['name']."</td><td>".$v['quanlity']."</td><td>".$v['sales']."</td><td>".$v['price']."</td>".
                                "<td><a class='p_del' href='".$this->vars['root']."/index.php?r=admin/Index/delProduct?id=".$v['product_id']."'>删除</a></td></tr>";
                                echo $str;
                            }
                        ?>
                        <tr><td colspan="10" class="page_search"><?php echo $this->vars["page"]; ?></td></tr>
                    </table>
            	</div>
            </div>
        </div>
    </div>
    <!---end 列表层----->
</div>
<!------------- end 右边主体层 ------------------>
</body>
</html>
