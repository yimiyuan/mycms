<?php
/*** 模板类,负责编译html,替换变量 */
namespace model;
class Template{
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
     */
    public function assign($tpl_var = null , $value = null){
        if(!empty($tpl_var)){
            $this->vars[$tpl_var] = $value;
        }else{
            error_handler("param of assign can not empty!");
        }
    }

    /**
     * @param $view 显示视图
     */
    public function display($view){
        $this->initParams();
        if(empty($view)){
            $view = MODEL_NAME . "." . MODEL_ACTION;
        }
        $this->render($view);
    }

    /**
     * 初始化一些变量函数
     */
    public function initParams(){
        if(substr(ENTER , -9) == 'index.php'){
            $this->assign('root' , substr(ENTER , 0 , -10));
        }
        else{
            error_handler('init error , position : class is Template , method is initParams');
        }
    }

    /**
     * @param $template 模板文件路径
     * @return bool
     * 功能: 模板编译,目前只支持简单变量,不支持数组;
     */
    public function _compile($template){
        if(file_exists($template)){
            /**
             * $pattern数组依次匹配: 变量,if,elseif,else
             */
            $pattern = array(
                '/'.$this->left_delimiter.'\s*\$([a-zA-Z_\x7f-\xff][a-zA-Z0-9_\x7f-\xff]*)\s*'.$this->right_delimiter.'/i',
                '/'.$this->left_delimiter.'\s*if\s*(.+?)\s*'.$this->right_delimiter.'(.+?)'.$this->left_delimiter.'\s*\/if\s*'.$this->right_delimiter.'/is',
                '/'.$this->left_delimiter.'\s*else\s*if\s*(.+?)\s*'.$this->right_delimiter.'/is',
                '/'.$this->left_delimiter.'\s*else\s*'.$this->right_delimiter.'/is',
            );  /** i不区分大小写,s将字符串视为单行,换行符作为普通字符 */
            $replacement = '<?php echo $this->vars["${1}"]; ?>';
            return preg_replace($pattern , $replacement , file_get_contents($template));
        }else{
            error_handler('view not exits : ' . $template);
        }
    }

    /*** 引入编译文件视图 */
    public function render($view){
        header("Content-Type:text/html;charset=utf-8");
        $viewInfo = $this->_getViewInfo($view);
        $update = filemtime($viewInfo['html']);
        if(file_exists($viewInfo['html'])){
            if(file_exists($viewInfo['php'])){
                if($update > filemtime($viewInfo['php'])){    /** 判断文件是否修改 */
                    file_put_contents($viewInfo['php'] , '<?php if (!defined(\'TOKEN_IN\')) exit(); ?>');   //添加定义的常量,确保单一入口;
                    file_put_contents($viewInfo['php'] , $this->_compile($viewInfo['html']) , FILE_APPEND);
                }
            }else{
                file_put_contents($viewInfo['php'] , '<?php if (!defined(\'TOKEN_IN\')) exit(); ?>');
                file_put_contents($viewInfo['php'] , $this->_compile($viewInfo['html']) , FILE_APPEND);
            }
        }else{
            error_handler('view not exist : ' . $viewInfo['html']);
        }
        include $viewInfo['php'];exit;
    }

    /**
     * @param $view , 例如值为'Index.index'
     * @return array 返回html文件和缓存php文件
     * html值是html文件路径,php是php文件路径,key是保存html文件修改的时间key.
     * html=>D:\phpStudy\WWW\myapi\view\admin\Index\index.html
     * php=>D:\phpStudy\WWW\myapi\cache\admin\4425cfd4b3afaf9c5b3f5c0fd6f27639.php
     * key=>admin_Index_index
     */
    public function _getViewInfo($view){
        $array = explode('.', $view);
        if (sizeof($array) >= 2) {
            $htmlFile = VIEW . DS . TEMPLATE . DS . $array[0] . DS . $array[1] . '.' . SUFFIX;
            $phpFile = CACHE . DS . TEMPLATE . DS . TEMPLATE . "." . $view  . '.php';
        }else{
            error_handler('view is not exist!');
        }
        return array('html' => $htmlFile, 'php' => $phpFile , 'key' => TEMPLATE . '_' . $array[0] . '_' . $array[1]);
    }


}

