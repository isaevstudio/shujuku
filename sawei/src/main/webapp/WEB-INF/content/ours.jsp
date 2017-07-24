<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>关于我们</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
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
    
    
    <div style="float:left;margin-left:2%;">
        <div class="row" style="margin-left:30px;width:300px;margin-top:10px;" >
              <div class="thumbnail" style="height:280px;background-color:#EEDE9D;">
                 
                   <div class="caption">
                     
                      <p>我们是矿大第一卖鞋的商店，Nike店成立于2017年7月18日。</p>    
                      <p>NIKE公司总部位于美国俄勒冈州波特兰市。公司生产的体育用品包罗万象，例如服装，鞋类，运动器材等。NIKE是全球著名的体育运动品牌，英文原意指希腊胜利女神，中文译为耐克。
耐克商标图案是个小钩子。耐克一直将激励全世界的每一位运动员并为其献上最好的产品视为光荣的任务。耐克首创的气垫技术给体育界带来了一场革命。运用这项技术制造出的运动鞋可以很好地保护运动员的膝盖.</p>             
                  </div>
    
  
</div>
<br>
<a href="https://store.nike.com/cn/zh_cn/pw/jordan-%E9%85%8D%E9%A5%B0-%E8%A3%85%E5%A4%87/ofqZobv"><img src="img/aia.jpg"></a>
   <br>
<img src="img/aia2.jpg"> 
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>