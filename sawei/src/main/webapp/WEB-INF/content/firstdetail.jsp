<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>NBA ＮＩＫＥ 鞋子</title>
<link href="css/css.css" type="text/css" rel="stylesheet">	
<SCRIPT src="js/jquery-1.2.6.pack.js" type=text/javascript></SCRIPT>
<SCRIPT src="js/base.js" type=text/javascript></SCRIPT>
</head>

<body style="text-align:center">
 <br>
<a href="https://store.nike.com/cn/zh_cn/pw/jordan-%E9%85%8D%E9%A5%B0-%E8%A3%85%E5%A4%87/ofqZobv"><img src="img/aia.jpg"></a>
   <br>

<a href="mainshop"><img src="img/homeb.png"></a>&nbsp;&nbsp; <h1 style="float:center";><font color="#000999">NBA ＮＩＫＥ 鞋子</font></12>

<div id=preview>
	<div class=jqzoom id=spec-n1 onClick="window.open('#')"><IMG height=350
	src="img/img04.jpg" jqimg="img/img04.jpg" width=350>
	</div>
	<div id=spec-n5>
		<div class=control id=spec-left>
			<img src="img/left.gif" />
		</div>
		<div id=spec-list>
			<ul class=list-h>
				<li><img src="img/img01.jpg"> </li>
				<li><img src="img/img02.jpg"> </li>
				<li><img src="img/img03.jpg"> </li>
				<li><img src="img/img04.jpg"> </li>
				<li><img src="img/img01.jpg"> </li>
				<li><img src="img/img02.jpg"> </li>
				<li><img src="img/img03.jpg"> </li>
				<li><img src="img/img04.jpg"> </li>
				<li><img src="img/img01.jpg"> </li>
				<li><img src="img/img02.jpg"> </li>
				<li><img src="img/img03.jpg"> </li>
				<li><img src="img/img04.jpg"> </li>
			</ul>
		</div>
		<div class=control id=spec-right>
			<img src="img/right.gif" />
		</div>
		
    </div>
</div>
<SCRIPT type=text/javascript>
	$(function(){			
	   $(".jqzoom").jqueryzoom({
			xzoom:400,
			yzoom:400,
			offset:10,
			position:"right",
			preload:1,
			lens:1
		});
		$("#spec-list").jdMarquee({
			deriction:"left",
			width:350,
			height:56,
			step:2,
			speed:4,
			delay:10,
			control:true,
			_front:"#spec-right",
			_back:"#spec-left"
		});
		$("#spec-list img").bind("mouseover",function(){
			var src=$(this).attr("src");
			$("#spec-n1 img").eq(0).attr({
				src:src.replace("\/n5\/","\/n1\/"),
				jqimg:src.replace("\/n5\/","\/n0\/")
			});
			$(this).css({
				"border":"2px solid #ff6600",
				"padding":"1px"
			});
		}).bind("mouseout",function(){
			$(this).css({
				"border":"1px solid #ccc",
				"padding":"2px"
			});
		});				
	})
	</SCRIPT>

<SCRIPT src="js/lib.js" type=text/javascript></SCRIPT>
<SCRIPT src="js/163css.js" type=text/javascript></SCRIPT>
 <br>
    <img src="img/1.1.jpg"  class="center-img">
    <br>
    <a href="https://store.nike.com/cn/zh_cn/pd/roshe-one-%E5%A5%B3%E5%AD%90%E8%BF%90%E5%8A%A8%E9%9E%8B/pid-11086819/pgid-11506282"><img src="img/1.2.jpg"></a><a href="https://store.nike.com/cn/zh_cn/pd/lebron-14-prm-ep-%E7%94%B7%E5%AD%90%E7%AF%AE%E7%90%83%E9%9E%8B/pid-11918492/pgid-11933786"><img src="img/1.3.jpg"></a><a href="https://store.nike.com/cn/zh_cn/pd/tanjun-%E7%94%B7%E5%AD%90%E8%BF%90%E5%8A%A8%E9%9E%8B/pid-10869058/pgid-11612354"><img src="img/1.4.jpg"></a><a href="https://store.nike.com/cn/zh_cn/pd/benassi-jdi-%E7%94%B7%E5%AD%90%E6%8B%96%E9%9E%8B/pid-10164481/pgid-11493003"><img src="img/1.5.jpg"></a>

</body>
</html>