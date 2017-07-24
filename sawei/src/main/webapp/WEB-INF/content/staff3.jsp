<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>购物车</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
    .center-img {
  display: block;
  margin: 0 auto;
}
.thtd{
        color:coral;
        font-family:华文细黑;
        font-size: 16px;
        padding: 5px 15px;
        }
        table {
	border-collapse: collapse;
	border-spacing: 0;
	border-left: 1px solid #888;
	border-top: 1px solid #888;
	background: #efefef;
}

th, td {
	border-right: 1px solid #888;
	border-bottom: 1px solid #888;
	padding: 5px 15px;
}

th {
	font-weight: bold;
	background: #ccc;
}
    </style>
  </head>
  <body>
  
   <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="staff1">信息管理系统</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="stafflog">Exit</a></li>
            
          </ul>
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
        </div>
      </div>
    </nav>
  
  <br>
  <br><br>
         <table class="table table-hover">
                
                <tr>
			<th class="thtd">Shoe图片</th>
			<th class="thtd">Shoe号</th>
			<th class="thtd">Shoe名称</th>
			<th class="thtd">Shoe价格</th>
			<th class="thtd">Shoe数量</th>
			<th class="thtd"><font color="red">删除</font></th>
		    </tr>
		    
           <c:forEach items="${requestScope.shoe_list }" var="shoe">
		   
			<tr>
				<td><img src="img/${shoe.shoeimage}"></td>
				<td>${shoe.shoenumber}</td>
				<td>${shoe.shoename}</td>
				<td>${shoe.shoeprice}</td>
				<td>${shoe.shoecount}</td>
		 <td>
			<a class="btn btn-danger" href="deleteww?shoe_id=${shoe.id}" role="button">删除</a>
		    </td>
				
		 
		
		
		</c:forEach>		
        </table>
     </div>
 </div>
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
   
  <form action="shoeadd" method="POST">
    <table class="table table-hover" >
                <td width="200px" class="thtd">Shoe图片</td>
                <td class="thtd">Shoe号</td>
                <td class="thtd">Shoe类型</td>
                <td class="thtd">Shoe退</td>
                <td class="thtd">Shoe名称</td>
                <td class="thtd">Shoe价格</td>
                <td class="thtd">Shoe数量</td>
                
                
                <td class="thtd">添加</td>
            <tr>
                <td><input type="file" name="shoeimage"></td>
                <td><input type="text" name="shoenumber"></td>
                <td><input type="text" name="shoetype"></td>
                <td><input type="text" name="shoeintro"></td>
                <td><input type="text" name="shoename"></td>
                <td><input type="text" name="shoeprice"></td>
                <td><input type="text" name="shoecount"></td>
                <td><button type="submit" class="btn btn-info">添加</button></td> 
            </tr>
           
        </table>
        </form>
   
   
   
   
  </body>
</html>