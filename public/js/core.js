
/**
 *  @author jimliu
 *
 *  功能 : 封装的ajax请求,调用格式如下:
 *
 *  ajax('get','/myapi/test.php',{'username':'jim','age':20},function(data){
 *       alert(data);
 *   },function(error){
 *       alert(error);
 *   });
 *
 *   如果是get请求,传输参数也可以直接写成url字符串,例如:'username=jim&age=20'
 *
 *
 */

function ajax(type, url, data, success, error){
    var xmlhttp = null;
    if(window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();   /** IE7+,google,firefox等浏览器得到XMLHttpRequest对象 */
    }
    else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");     /** 从IE6,IE5中得到XMLHttpRequest对象 */
    }

    var type = type.toUpperCase(); /** type转换为大写字母 */

    if(typeof data == 'object'){
        var str = '';
        for(var key in data){
            str += key+'='+data[key]+'&';
        }
        var params = str.replace(/&$/, ''); /** 匹配最后一个'&'并去掉 */
    }

    if(type == 'GET'){
        xmlhttp.open('GET', url + '?' + params , true);    /** true表示异步请求,如果为false,表示同步请求 */
        xmlhttp.send();
    }

    if(type == 'POST'){
        xmlhttp.open('POST', url, true);
        xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");  /** 添加http头 */
        xmlhttp.send(params);
    }

    /**---- 处理返回数据 -----*/
    xmlhttp.onreadystatechange = function(){
        try{
            if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
                success(eval('(' + xmlhttp.responseText + ')'));    /** 字符串转换为json格式,纯JavaScript的ajax返回没有json,只有封装 */
            }
        }catch(exception){  /** exception会自动装载错误信息,当然,我这里没有调用,用的自己定义的提示. */
            error('ajax request is error!')
        }

    }
}

/** 通过id,获取该对象的value值 */
function getValue(id) {
    return document.getElementById(id).value;
}

/** 通过id,获取该对象 */
function getObject(id) {
    return document.getElementById(id);
}
