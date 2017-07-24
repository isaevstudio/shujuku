<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<div style="margin:30px auto;width:15%;">
          <div style="margin-left:auto;"><img src="img/touxiang.png" class="img-circle"></div><br>
          <div>
          <form action="xiugai" method="post">
        
          <div class="input-group" style="margin-top:15px">
             <span class="input-group-addon" id="sizing-addon2"><span class="glyphicon glyphicon-certificate"></span></span>
              <input type="text" class="form-control" placeholder="用户账号" aria-describedby="sizing-addon2" name="loginnumber">
          </div>
          <div class="input-group" style="margin-top:15px">
             <span class="input-group-addon" id="sizing-addon2"><span class="glyphicon glyphicon-lock"></span></span>
              <input type="password" class="form-control" placeholder="旧密码" aria-describedby="sizing-addon2" name="password">
          </div>
          <div class="input-group" style="margin-top:15px">
             <span class="input-group-addon" id="sizing-addon2"><span class="glyphicon glyphicon-lock"></span></span>
              <input type="password" class="form-control" placeholder="新密码" aria-describedby="sizing-addon2" name="newpwd">
          </div>
          
          <div style="margin-top:15px;margin-left:100px;"><button type="submit" class="btn btn-info">提交</button></div>
         </form>
         </div>
         </div>
</body>
</html>