<?php
/**
 * @author jimliu
 * Date: 2017/7/21
 * 功能: 全局常量定义,以下常量依次是: 路径常量,模板常量
 */
define( 'DS' , DIRECTORY_SEPARATOR );
define('ROOT' , dirname(dirname(__FILE__)));
define('APPLICATION' , ROOT . DS . 'application');
define( 'ADMIN' , APPLICATION . DS . 'admin');            //后台控制器路径
define( 'HOME' , APPLICATION . DS . 'home');              //前台控制器路径
define( 'SOCK' , APPLICATION . DS . 'interface');         //接口文件路径
define( 'MODEL' , APPLICATION . DS . 'model');            //功能model路径
define('VIEW' , ROOT . DS . 'view');                      //视图目录
define('CACHE' , ROOT . DS . 'cache');                    //缓存目录
define('ADMIN_TIME' , 'admin_time.txt');                  //保存admin下html文件更改时间的文件
define('HOME_TIME' , 'home_time.txt');                    //保存home下html文件更改时间的文件
define('ENTER' , $_SERVER['SCRIPT_NAME']);                //入口文件路径
define('TOKEN_ON' , true);
define('_TOKEN' , 'zh');                                  //项目token,安全验证
define('TPL_CACHE' , true);                               //是否开启缓存,页面缓存,必须开启,不然会出问题
define('SUFFIX' , 'html');                                //后缀

define('LEFT_DELIMITER' , '{{');                            //模板左定界符
define('RIGHT_DELIMITER' , '}}');                           //模板右定界符




