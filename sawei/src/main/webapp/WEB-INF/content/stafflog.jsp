<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>登录</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

          
          
      <div style="width:15%; margin-left:45%; margin-right:auto; z-index:1;margin-top:100px;">
          <div style="margin-left:auto; margin-right:auto; "><img src="img/staff1.jpg" class="img-circle"></div><div style="margin-left:80%; margin-right:auto; "><a href="login"><img src="img/touxiang1.jpg" class="img-circle"></a></div></br>
          <form action="staffwww" method="POST">
         <div class="input-group">
             <span class="input-group-addon" id="basic-addon1"><font color="#3366FF"><span class="glyphicon glyphicon-user"></span>用户账号：</font></span>
             <input type="text" class="form-control" placeholder="loginnumber" aria-describedby="basic-addon1" name="staffloginnumber" >
        </div>
           <br>
         <div class="input-group">
             <span class="input-group-addon" id="basic-addon1"><font color="#3366FF"><span class="glyphicon glyphicon-lock"></span>用户密码：</font></span>
             <input type="password" class="form-control" placeholder="password" aria-describedby="basic-addon1" name="staffpassword" >
         </div>
         <br>
         <div>
               &nbsp;&nbsp;<input type="checkbox" name="ck">&nbsp;&nbsp;记住账户和密码
         </div>
         <br>
         <div class="btn-group btn-group-justified" role="group" aria-label="...">
             <div class="btn-group" role="group">
               <button class="btn btn-success" type="submit">立即登录</button>
            </div>
            <div class="btn-group" role="group">
              <button type="submit" class="btn btn-info" formaction="staffreg">立即注册</button>
            </div>
       </div>
          </form>
                         
      <div style="text-align:center;"><font color="red">${requestScope.message }</font></div>
      
      
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>