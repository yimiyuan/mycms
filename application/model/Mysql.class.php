<?php
namespace model;
/**
 * 单例模式,pdo方式操作数据库,调用方式 : $mysql = mysql::getInstance();
 */
class Mysql{
    public static $_instance;   /** 当前类实例 */
    public $table = '';         /** 表名 */
    public $db = null;          /** 数据库连接对象 */
    public $options = array();  /** 查询参数 */
    public $sql = '';           /** 生成的sql语句 */
    public $model = array();    /** 初始化表(模型列表) */
    public $pageHtml = '';      /** 分页html */
    public $pageData = array(); /** 分页数据 */
    public $pageSize = 5;

    /** 初始化获取数据库连接 */
    public function __construct($table = ''){
        $this->_getConnect();
        if(!empty($table)){
            $this->table = $table;
        }
    }

    /** 得到数据库连接信息 */
    public function _getConnect(){
        $changDb = "mysql:host=".C('host').";dbname=".C('database').";port=".C('port');
        try{
            $this->db = new \PDO($changDb , C('username') , C('password'));
            $this->db->query("set names utf8");
            $this->db->setAttribute(\PDO::ATTR_DEFAULT_FETCH_MODE,\PDO::FETCH_ASSOC);
        }
        catch(PDOException $e){
            echo 'Error!: ' . $e->getMessage() . "<br/>";
            die();
        }
    }

    /*** @return 单列模式,判断是否实例化mysql类 */
    public static function getInstance(){
        if(!(self::$_instance instanceof self)){
            self::$_instance = new self;
        }
        return self::$_instance;
    }

    /** 原始sql查寻 */
    public function query($sql){
        $return = array();
        $data = $this->db->query($sql);
        if(is_object($data)){
            foreach($data as $key=>$value){
                $return[$key] = $value;
            }
        }else{
            $return = null;
        }
        return $return;
    }

    /** 执行添加,删除,修改,返回影响行数 */
    public function execute($sql){
        $return = $this->db->exec($sql);
        if($return){
            return $return;
        }else{
            return 0;
        }
    }

    /** 选取特定字段,fields必须为"username,age,phone"这种逗号隔开的格式,否则选择所有数据 */
    public function field($fields = ''){
        $this->options['fields'] = $fields?$fields:'*';
        return $this;   /** 返回$this,才可以M()->field()->select()连续调用,不然只能M()->field(), M()->select()这样调用; */
    }

    /** 条件查询,where可以为以为一维数组或者字符串,$value为字符串,传的三个格式例子: where(array('name'=>'jim','age'=>20)) , where('name','jim') , where("name='jim'") */
    public function where($where = '', $value = ''){
        if(!isset($this->options['where'])){
            $this->options['where'] = array();
        }
        if(is_array($where) && count($where) > 0){
            foreach($where as $k=>$v){
                $where[$k] = safe_replace($v);  /** 安全过滤 */
            }
            $array = $where;
        }elseif(!empty($where) && !empty($value)){
            $array = array($where=>safe_replace($value));   /** 安全过滤 */
        }elseif(!empty($where) && empty($value)){
            list($field , $fieldValue) = explode("=" , $where);
            $array = array($field=>safe_replace($fieldValue));  /** 安全过滤 */
        }
        $this->options['where'] = $this->options['where'] + $array;
        return $this;
    }

    /** 模糊查询 */
    public function like($string = ''){
        $this->options['like'] = $string;
        return $this;
    }

    /** $offset从第几条数据取,$rows取多少条,如果$row为空,则$offset为取数数量 */
    public function limit($offset = '' , $rows = ''){
        if(empty($offset) && empty($rows)){
            $this->options['limit'] = '';
        }
        $this->options['limit'] = empty($rows)?"0,".$offset:$offset.",".$rows;
        return $this;
    }

    /** 执行查询 */
    public function select(){
        $this->buildSql();
        return $this->query($this->sql);
    }

    /** 获取一条数据 */
    public function fetchOne(){
        $this->buildSql();
        $res = $this->query($this->sql);
        return @$res[0]?@$res[0]:null;
    }

    /** 得到最后一条sql语句 */
    public function getLastSql(){
        return $this->sql;
    }

    /** 生成sql */
    public function buildSql(){
        if(!empty($this->options['update'])){       /** 创建更新sql */
            if(count($this->options['where']) > 0){    /** 要求必须设置where,防止把所有数据修改*/
                $this->sql = "update $this->table set " . $this->options['update'] . " where ";
                foreach($this->options['where'] as $k=>$v){
                    $this->sql .= $k . "='" . $v . "' and ";
                }
                $this->sql = rtrim(rtrim($this->sql , " '")," and");
            }
        }else{
            $where = '';
            $limit = '';
            if(isset($this->options['where']) && count($this->options['where']) > 0){
                foreach($this->options['where'] as $k=>$v){
                    $where .= $k . "='" . $v . "' and ";
                }
                $where = rtrim($where , " and ");
            }
            if(!empty($this->options['like'])){
                if(!empty($where)){
                    $where .= " and " . $this->options['like'];
                }else{
                    $where .= $this->options['like'];
                }
            }
            if(!empty($this->options['limit'])){
                $limit = " limit " . $this->options['limit'];
            }
            if(!empty($where)){
                $where = ' where ' . $where;
            }
            if(isset($this->options['fields'])){
                $this->sql = "select " . $this->options['fields'] . " from $this->table " . $where . $limit;
                return;
            }
            if(isset($this->options['count']) && $this->options['count']){
                $this->sql = "select count(*) as count from $this->table " . $where . $limit;
                return;
            }
            $this->sql = "select * from " . $this->table . $where . $limit;
        }
    }

    /** 获取字段值 */
    public function fetch($field = ''){
        $res = $this->field($field)->limit(0,1)->select();
        return @$res[0][$field]?@$res[0][$field]:'';
    }

    /** 更新数据,$array为数组,$array为一维数组 */
    public function update($array = array()){
        $this->options['update'] = $this->parseSet($array);
        $this->buildSql();
        return $this->execute($this->sql);
    }

    /** 转换修改的数组 */
    public function parseSet($array = array()){
        $return = '';
        if(!empty($array)){
            foreach($array as $k=>$v){
                $return .= $k . "='" . safe_replace($v) .  "',";
            }
            $return = rtrim($return , ",");
        }
        return $return;
    }

    /*** $row总共多少条数据,得到分页数据和分页html */
    public function getPageData($rows = 0 , $currentPage = 1){
        $page = new Page($rows,$currentPage,$this->pageSize);
        $this->pageHtml = $page->show();
        M($this->table)->limit(($currentPage-1)*$page->pageSize , $page->pageSize);
        $this->buildSql();
        $this->pageData = $this->query($this->sql);
    }

    /** 获取$table表总共有多少条数据 */
    public function count(){
        $this->options['count'] = true;
        $this->buildSql();
        $res = $this->query($this->sql);
        $this->options['count'] = false;    /** 运行过一次count了,以免再调用的时候,拼接语句的时候再进入$this->options['count']选项 */
        return @$res[0]['count']?@$res[0]['count']:0;
    }
}
