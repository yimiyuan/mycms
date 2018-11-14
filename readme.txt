
==================================================================================================================================

这是自己写的一个mvc框架带cms,兼容php5.3-php7版本,思维参照thinkphp3,由于模板框架复杂,也不喜欢被特定的标签,所以模板只支持普通变量,不支持数组等复杂php格式;

路径访问格式: http://localhost/myapi/index.php?r=home/Index/index

index.php是统一入口 ; home是前端模块,admin是后端模块,Index是IndexController控制器,index为IndexController下的index方法,和thinkphp一样;

变量赋值: $this->assign('username','jim'); html页面访问: {{ $root }}

数组赋值: $this->assign('data',$array); 数组html页面访问: <?php  foreach($this_var['data'] as $k=>v) { ... }     ?>

