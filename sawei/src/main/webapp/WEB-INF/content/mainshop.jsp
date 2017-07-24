<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Welcome</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <link rel="stylesheet" href="css/normalize.css">
	  <link rel="stylesheet" href="css/ideal-image-slider.css">
   	<link rel="stylesheet" href="css/default.css">
     <script src="js/ideal-image-slider.js"></script>
     <script src="js/getDate.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript">
function startTime()
{
var today=new Date()
var h=today.getHours()
var m=today.getMinutes()
var s=today.getSeconds()
// add a zero in front of numbers<10
m=checkTime(m)
s=checkTime(s)
document.getElementById('txt').innerHTML=h+":"+m+":"+s
t=setTimeout('startTime()',500)
}

function checkTime(i)
{
if (i<10) 
  {i="0" + i}
  return i
}
</script>
    <style>    
        .navcolor{
      background-color:###000000;}
      body{margin-left:15%;
            margin-right:15%;
            margin-top:5px;
           
            }
     .li{margin-left:25px;}
     #slider {
		max-width: 1340px;
		margin: 0 0;
	
		
	}
    </style>
   
  </head>
  <body onload="startTime()">
    <div>
     <div> 
       <nav class="navbar navbar-default navcolor">
           <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
              <div class="navbar-header">
               
                 <img src="img/logo.jpg">&nbsp;&nbsp;&nbsp;&nbsp;
             </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
             <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="margin-top:30px">
      <ul class="nav navbar-nav">
        <li class="li"><a href="#"><font size="4px" face="幼圆" color="#76CB9A">首页</font> <span class="sr-only">(current)</span></a></li>
        <li class="li"><a href="ours"><font size="4px" face="幼圆" color="#76CB9A">关于我们</font></a></li>
        <li class="dropdown li">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><font size="4px" face="幼圆" color="#76CB9A">商品</font><span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="xiuxianshoe">休闲鞋</a></li>
            <li><a href="paobushoe">跑步鞋</a></li>
            <li><a href="huabanshoe">滑板鞋</a></li>
            <li><a href="lanqiushoe">篮球鞋</a></li>
          </ul>
        </li>
        <li class="li"><a href="lianxi"><font size="4px" face="幼圆" color="#76CB9A">联系我们</font></a></li>
        <li class="dropdown li">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><font size="4px" face="幼圆" color="#76CB9A">${sessionScope.user.username}</font><span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="cart">我的购物车</a></li>
            <li><a href="collect">我的收藏</a></li>
            <li><a href="order">我的订单</a></li>
             <li><a href="mima">修改密码</a></li>
             <li><a href="main">注销</a></li>
            
          </ul>
        </li>
        <li id="txt" style="padding-left:40px;padding-top:15px"></li>
      
      </ul>
      
      <form class="navbar-form navbar-right">
        <div class="form-group">
        
        在线${applicationScope.count}个人
        
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default" disabled>搜索</button>
      </form>
     
    </div><!-- /.navbar-collapse -->
   </div><!-- /.container-fluid -->
 </nav>
</div>
    <div id="slider" style="margin-top:2px,0px,0px,0px">      
		<img src="img/1.jpg" data-src-2x="img/1@2x.jpg" alt="Slide 1" />
		<img data-src="img/2.jpg" data-src-2x="img/2@2x.jpg" src="" alt="Slide 2" />
		<img data-src="img/3.jpg" data-src-2x="img/3@2x.jpg" src="" alt="Slide 3" />
	</div>
	
	<script>
	var slider = new IdealImageSlider.Slider('#slider');
	slider.start();
	</script>
  <div>
    <div style="margin-left:10px;width:300px;margin-top:0px;float:left;">
        <div class="alert alert-success" role="alert" style="margin-top:10px;border-radius:25px;box-shadow: 10px 10px 5px #888888;">
           <a href="xiuxianshoe" class="alert-link">休闲鞋&nbsp;&nbsp;&nbsp;&nbsp;<span class="badge">火热鞋子</span></a>
       </div>
       <div class="alert alert-info" role="alert" style="border-radius:25px;box-shadow: 10px 10px 5px #888888;">
           <a href="paobushoe" class="alert-link">跑步鞋</a>
       </div>
      <div class="alert alert-warning" role="alert" style="border-radius:25px;box-shadow: 10px 10px 5px #888888;">
          <a href="huabanshoe" class="alert-link">滑板鞋</a>
      </div>
       <div class="alert alert-danger" role="alert" style="border-radius:25px;box-shadow: 10px 10px 5px #888888;">
           <a href="lanqiushoe" class="alert-link">篮球鞋</a>
       </div>
    </div>
    <div style="float:left;">
        <div class="row" style="margin-left:2%;width:300px;margin-top:10px;" >
              <div class="thumbnail" style="height:280px;background-color:#EEDE9D;">
                 <a href="firstdetail"><img  src="img/111.jpg" alt="picture"></a>
                   <div class="caption">
                      <h3>NBA ＮＩＫＥ 鞋子<span><font color="red">￥550</font></span></h3>
                      <p>《NBA 鞋子》 是一种特别的篮球鞋。 好看、舒服 而且很时髦的。 </p>                   
                  </div>
                </div> 
          </div>   
    </div>
     <div style="float:left;margin-left:2%;">
        <div class="row" style="margin-left:30px;width:300px;margin-top:10px;" >
              <div class="thumbnail" style="height:280px;background-color:#EEDE9D;">
                 <a href="seconddetail"><img  src="img/222.jpg" alt="picture"></a>
                   <div class="caption">
                      <h3>滑板鞋 ＮＩＫＥ<span><font color="red">￥200</font></span></h3>
                      <p>《滑板鞋》2017 年新版的！！！</p>                   
                  </div>
                </div> 
          </div>   
    </div>
    <div>
      <img src="img/wsw.jpg">
      </div>
   </div>
    </div>
    <br>
   <div>
      <img src="img/foot1.PNG">
      </div>
            
   </body>
   <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>