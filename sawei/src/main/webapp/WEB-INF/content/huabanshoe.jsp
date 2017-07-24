<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
 <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Nike</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
.thtd{
        color:coral;
        font-family:华文细黑;
        font-size: 16px;
        padding: 5px 15px;
        width:150px;
        }
     table {
	border-collapse: collapse;
	border-spacing: 0;
	border-left: 1px solid #888;
	border-top: 1px solid #888;
	background: #efefef;
}

 td {
	border-right: 1px solid #888;
	border-bottom: 1px solid #888;
	border-bgcolor:#CC6666;
	padding: 1px 1px;
	width:200px;
}

th {
	font-weight: bold;
	background: #ccc;
	width:150px;
}
    </style>
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
  
  
 <div>
     <div style="width:60%;margin:auto auto;">
         <h1>NIKE-SHOE</h1>
         <br>
         <table class="table table-hover" >
                <td width="200px" class="thtd">鞋子</td>
                <td class="thtd">鞋子号码</td>
                <td class="thtd">种</td>
                <td class="thtd">退货</td> 
                <td class="thtd">鞋子价格</td>
                <td class="thtd">鞋子数量</td>
                <td class="thtd">加入购物车</td>
                <td class="thtd">鞋子购买</td>
                <td class="thtd">鞋子收藏</td>
            
            <c:forEach items="${requestScope.hbshoe_list}" var="shoe">      
            <tr>
                <td><img src="img/${shoe.shoeimage }"></td>
                <td>${shoe.shoenumber}</td>
                <td>${shoe.shoename}</td> 
                <td>${shoe.shoeintro}</td>
                <td><font color="red">${shoe.shoeprice}</font></td>
                <td>${shoe.shoecount}</td>
                <td><a class="btn btn-primary" href="save?shoe_id=${shoe.id}" role="button" >购物车</a></td>
                <td><a class="btn btn-info" href="saveorder?shoe_id=${shoe.id}" role="button">购买</a></td> 
                <td><a class="btn btn-danger" href="savecollect?shoe_id=${shoe.id}" role="button">收藏</a></td> 
            </tr>
            </c:forEach>
        </table>
     </div>
 </div>
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>