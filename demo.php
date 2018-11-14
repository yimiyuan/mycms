<?php

header("Content-Type:text/html;charset=utf-8");

class Template
{
    /**
     * @var array 模板变量
     */
    public $vars = array();
    /**
     * @var string 左定界符
     */
    public $left_delimiter = LEFT_DELIMITER;
    /**
     * @var string 右定界符
     */
    public $right_delimiter = RIGHT_DELIMITER;

    /**
     * @param $tpl_var
     * @param null $value
     * @return $this 模板赋值,目前只支持简单的变量; 支持数组用原生php,不支持数组用模板;
     * 如果用数组变量,可以用php代码直接写,例如: $this->assign("users",array(0=>array("username"=>"jim","age"=>20),1=>array("username"=>"lily","age"=>18))); 在html中写:
     * <?php foreach($this->vars['users'] as $list){
     *      echo $list['username'];
     * }
     * ?>
     *
     */
    public function assign($tpl_var = null, $value = null)
    {
        if (!empty($tpl_var)) {
            $this->vars[$tpl_var] = $value;
        } else {
            error_handler("param of assign can not empty!");
        }
    }

    /**
     * @param $view 显示视图
     */
    public function display($view)
    {
        $this->initParams();
        $this->render($view);
    }

    /**
     * 初始化一些变量函数
     */
    public function initParams()
    {
        if (substr(ENTER, -9) == 'index.php') {
            $this->assign('root', substr(ENTER, 0, -10));
        } else {
            error_handler('init error , position : class is Template , method is initParams');
        }
    }
}



// 表示由数据库返回的可能记录集的数组
$a = array(
    array(
        'id' => 5698,
        'first_name' => 'Bill',
        'last_name' => 'Gates',
    ),
    array(
        'id' => 4767,
        'first_name' => 'Steve',
        'last_name' => 'Jobs',
    ),
  array(
      'id' => 3809,
      'first_name' => 'Mark',
      'last_name' => 'Zuckerberg',
  )
);

var_dump(strtotime('2018-4'));

/***
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 */
















