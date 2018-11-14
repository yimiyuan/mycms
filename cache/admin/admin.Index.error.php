<?php if (!defined('TOKEN_IN')) exit(); ?><!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link href="<?php echo $this->vars["root"]; ?>/public/admin/css/admin_login.css" type="text/css" rel="stylesheet"/>
</head>
<body>

    <div style="text-align: center;font-size:12px;margin-top:30px;">
        <span style="color:red;"><?php echo $this->vars["message"]; ?></span>&nbsp;&nbsp;&nbsp;&nbsp;<a style="color:red;" href="javascript:void(0);" onclick="jumpurl()">返回</a>
    </div>

    <script type="text/javascript">
        function jumpurl(){
            window.history.back(-1);
        }
    </script>

</body>
</html>

