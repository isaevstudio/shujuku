<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; ">
 <link href="css/bootstrap.min.css" rel="stylesheet">
<title>找回密码</title>
</head>
<body style="width:60%;margin:auto auto;" >

<br>
<div>
<form style="width:60%;margin:auto auto;float:left;" action="find" method="post">
  <div class="form-group" style="width:40%">
    <label for="exampleInputEmail1">请输入您的账号名：</label>
    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="用户名" name="username">
  </div>
  <br>
  <div class="form-group" style="width:40%">
    <label for="exampleInputPassword1">请输入您的邮箱：</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="youxian" name="email">
  </div>
  <br>
  <button type="submit" class="btn btn-danger">快速找回密码</button>

    
</form>
</div>

  
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>