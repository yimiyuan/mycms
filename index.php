<?php
/**
 * 项目的入口文件index.php , php5.3 , php7都支持
 *
 * 项目目录结构
 *
 * |--application
 *      |--admin    后台控制器
 *      |--home     前台控制器
 *      |--model    核心类库
 *      |--interface 接口类库
 *
 * |--cache
 *      |--admin    后台页面缓存
 *      |--home     前台页面缓存
 *      |--data     数据缓存
 *      |--html     html静态页面缓存
 *
 * |--public        公共文件,用于放css,images,js等公共文件
 *
 * |--view
 *      |--admin    后台页面html
 *      |--home     前台页面html
 *
 * 访问格式: "http://localhost/myapi/index.php?r=home/Index/index",index.php是入口文件,
 * home是前台模块,Index是indexActcion控制器,index是index方法;
 *
 */
header("content-type:text/html;charset=utf-8");

require "./application/init.php";




