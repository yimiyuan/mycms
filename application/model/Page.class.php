<?php
/*** 分页类,返回分页字符串 */
namespace model;
use model;
class Page{

    public $countRows;          /** 总共多少条数据 */
    public $currentPage;        /** 当前页 */
    public $pageSize;           /** 每页显示多少条数据 */
    public $totalPage;          /** 总页数 */
    public $rollPage;           /** 滚动页数,当前页面共显示几页(例如,点击下4页,将显示下四页) */
    public $page;               /** 分页字符串 */
    public $data;               /** 分页数据*/
    public $config = array('count'=>'合计:' , 'unit'=>'条数据' , 'page'=>'页' , 'first'=>'[首页]' , 'pre'=>'上' , 'next'=>'下' , 'last'=>'[尾页]');

    /** $countRows 总共多少条数据, $currentPage:当前页, $pageSize:每页多少条数据,$rollPage:一次滚动多少页 */
    public function __construct($countRows = 0 , $currentPage = 1 , $pageSize = 5 , $rollPage = 4){
        $this->countRows = $countRows;
        $this->currentPage = $currentPage;
        $this->pageSize = $pageSize;
        $this->rollPage = $rollPage;
        $this->totalPage = ceil($this->countRows/$this->pageSize);
    }

    /** 配置参数 */
    public function setConfig($key , $value){
        if(!isset($this->config[$key])){
            $this->config[$key] = $value;
        }
    }

    /** 获取分页字符串 */
    public function show(){
        $this->page = "<div id='page-info'>".$this->config['count']."&nbsp;" . $this->countRows . '&nbsp;' . $this->config['unit'] . '&nbsp;&nbsp;'.
            $this->currentPage . '/' . $this->totalPage . '&nbsp;' .$this->config['page'] . '&nbsp;&nbsp;';
        $url = $_SERVER['SCRIPT_NAME'] . '?r=' . request('r') . '&p=';
        $currentRoll = ceil($this->currentPage/$this->rollPage);  /** 当前页在第几轮翻页 */
        $firstPage = "";
        if($this->currentPage > $this->rollPage){
            $firstPage = "<a href='" . $url . "1'>".$this->config['first']."</a>";
            if($this->currentPage > $this->rollPage){
                $firstPage .= "<a href='".$url.(($currentRoll-2)*$this->rollPage+1)."'>".$this->config['pre'].$this->rollPage.$this->config['page']."</a>";
            }
        }
        $this->page .= $firstPage;
        for($i = ($currentRoll-1)*$this->rollPage+1 ; $i <= $currentRoll*$this->rollPage ; $i++){
            if($i <= $this->totalPage){
                if($i == $this->currentPage){
                    $this->page .= "<span class='current'>$i</span>";
                }else{
                    $this->page .= "<a href='" . $url . $i . "'>".$i."</a>";
                }
            }
        }
        if($this->currentPage <= ($this->totalPage-$this->rollPage)){
            $next = $currentRoll * $this->rollPage + 1;
            $this->page .= "<a href='".$url.$next."'>".$this->config['next'].$this->rollPage.$this->config['page']."</a>";
            $this->page .= "<a href='" . $url . $this->totalPage . "'>".$this->config['last']."</a></div>";
        }
        return $this->page;
    }


}











































