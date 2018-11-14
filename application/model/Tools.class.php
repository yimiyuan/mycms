<?php
/** Class Tool 工具类,处理一些常用的公共方法 */
namespace model;

class Tools{

    public $codeNumber = 4;     /** 验证码字符串长度 */
    public $codeWidth = 70;     /** 验证码图片长度 */
    public $codeHeight = 25;   /** 验证码图片宽度 */

    /** 功能: 生成验证码图片 */
    public function creatCode(){
        $code = '';
        for($i = 0 ; $i < $this->codeNumber ; $i++){
            $code .= rand(0 , 9);
        }
        $_SESSION['check_code'] = $code;
        header("Content-type: image/png");
        $image = imagecreate($this->codeWidth , $this->codeHeight);     /** 创建一个空白图片 */
        imagecolorallocate($image , 200, 200, 200);  /** 填充背景 **/
        $black = imagecolorallocate($image , 50, 40, 30);  /** 创建颜色 **/
        $gray = imagecolorallocate($image , 200, 200, 200); /** 创建颜色 **/
        $border = imagecolorallocate($image , 130, 130, 130); /** 创建边框颜色 **/

        /** 画矩形框 */
        imagerectangle($image , 0 , 0 , $this->codeWidth-1 , $this->codeHeight-1 , $border); /** 在图上画个矩形框(非实心),坐标不减1会多一个像素,会绘制到外面去 */

        /** 画两条虚线 */
//        $style = array($gray,$black,$black,$black);   /** 自己测试,只一个颜色信息绘制不出虚线,数组内容越多,该色块虚线长度越长,这个与下面两行代码一起,绘制一条虚线 */
//        imagesetstyle($image, $style);
//        imageline($image , 0 , rand(1,12) , 68 , rand(13,24) , IMG_COLOR_STYLED);       /** 绘制第一条虚线 **/
//        imageline($image , 0 , rand(13,24) , 68 , rand(1,12) , IMG_COLOR_STYLED);        /** 绘制第二条虚线 **/
//
//        /** 画小圆点 */
//        for ($i = 0; $i < 100; $i++) {
//            imagesetpixel($image, rand(0, $this->codeWidth), rand(0, $this->codeHeight), $black);
//        }

        /** 写字符 */
        imagestring($image , 5 , 17 , 6 , $code , $black);

        imagepng($image);                   /** 输出图片 */
        imagedestroy($image);               /** 释放图片所占内存 */
    }
}