<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>评价</title>

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
        <li class="li"><a href="#"><font size="4px" face="幼圆" color="#76CB9A"><a href="mainshop"><img src="img/homeb.png"></a></font> <span class="sr-only">(current)</span></a></li>
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
             <li><a href="main">注销</a></li>
            
          </ul>
        </li>
        <li id="txt" style="padding-left:40px;padding-top:15px"></li>
      
      </ul>
      
      <form class="navbar-form navbar-right">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default" disabled>搜索</button>
      </form>
     
    </div><!-- /.navbar-collapse -->
   </div><!-- /.container-fluid -->
 </nav>
</div>
    
    
      <div style="margin:200px auto;width:15%;">
          <div>
         <form action="pingjia" method="post">
          <div class="input-group">
             <span  id="sizing-addon2">物流评价</span>
              <input type="text" class="form-control" placeholder="物流评价" aria-describedby="sizing-addon2" name="wuliu">
          </div>
          <div class="input-group" style="margin-top:15px">
             <span  id="sizing-addon2">质量评价</span>
              <input type="text" class="form-control" placeholder="质量评价" aria-describedby="sizing-addon2" name="ziliang">
          </div>
          <div style="margin-top:15px;margin-left:100px;"><button type="submit" class="btn btn-info">提交</button></div>
         </form>
         </div>
      </div>
         <br>
    <img src="img/1.1.jpg">
    <br>
    <a href="https://store.nike.com/cn/zh_cn/pd/roshe-one-%E5%A5%B3%E5%AD%90%E8%BF%90%E5%8A%A8%E9%9E%8B/pid-11086819/pgid-11506282"><img src="img/1.2.jpg"></a><a href="https://store.nike.com/cn/zh_cn/pd/lebron-14-prm-ep-%E7%94%B7%E5%AD%90%E7%AF%AE%E7%90%83%E9%9E%8B/pid-11918492/pgid-11933786"><img src="img/1.3.jpg"></a><a href="https://store.nike.com/cn/zh_cn/pd/tanjun-%E7%94%B7%E5%AD%90%E8%BF%90%E5%8A%A8%E9%9E%8B/pid-10869058/pgid-11612354"><img src="img/1.4.jpg"></a><a href="https://store.nike.com/cn/zh_cn/pd/benassi-jdi-%E7%94%B7%E5%AD%90%E6%8B%96%E9%9E%8B/pid-10164481/pgid-11493003"><img src="img/1.5.jpg"></a>
    </body>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    </html>