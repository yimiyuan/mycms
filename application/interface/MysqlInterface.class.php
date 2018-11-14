<?php
/*** mysql操作类接口 */
namespace model;
interface MysqlInterface{

    /*** 用原生sql查询 , 返回查询结果关联数组*/
    public function query($sql);

    /**
     * @param $table    表名
     * @param $c_field  已知字段名
     * @param $c_value  已知字段值
     * @return string   返回字段值
     * 功能:通过提供表名,已经一个字段名和值,查询另一个字段值,如果有多个,只返回一个
     */
    public function getFieldValue($table , $c_field , $c_value , $field);

    /**
     * @param $table 表名
     * @param $field 字段名
     * @return mixed 返回字段值
     * 功能:通过提供的表名和字段值,获取该字段的值,如果有多个,只返回一个
     */
    public function getField($table , $field);

    /**
     * @param $table    表名
     * @param $field    字段名
     * @param $value    字段值
     * @return mixed    一条数据记录,类型为关联数组
     * 功能: 通过提供的表名,字段名,字段值,查询出一条记录的值,返回类型为关联数组
     */
    public function fetchOneField($table , $field , $value);

}
