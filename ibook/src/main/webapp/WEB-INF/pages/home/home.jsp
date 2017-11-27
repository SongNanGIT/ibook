<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<meta charset="UTF-8">
	<title>Iread</title>
	<meta name="description" content="Scarica gratis il nostro Template HTML/CSS GARAGE. Se avete bisogno di un design per il vostro sito web GARAGE può fare per voi. Web Domus Italia">
	<meta name="author" content="Web Domus Italia">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="${ctx}/staticfile/bootstrap-3.3.6-dist/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="${ctx}/staticfile/font-awesome-4.5.0/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="${ctx}/staticfile/css/slider.css">
	<link rel="stylesheet" type="text/css" href="${ctx}/staticfile/css/mystyle.css">
</head>
<body>
<!-- Header -->
<div class="allcontain">
	<div class="header">
		<c:if test="${!empty _CURRENT_USER.username}" var="flag">
		 您好:&nbsp;Login${_CURRENT_USER.username}&nbsp;&nbsp;|<a
					href="logout.action">注销</a>
		</c:if>
		<c:if test="${_CURRENT_USER.username==null }">
			<ul class="logreg">
				<li><a href="tologin.action">Login </a> </li>
				<li><a href="#"><span class="register">Register</span></a></li>
			</ul>
		</c:if>
	</div>
	<!-- Navbar Up -->
	<nav class="topnavbar navbar-default topnav">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed toggle-costume" data-toggle="collapse" data-target="#upmenu" aria-expanded="false">
					<span class="sr-only"> Toggle navigaion</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>	 
		</div>
		<div class="collapse navbar-collapse" id="upmenu">
			<ul class="nav navbar-nav" id="navbarontop">
				<li class="active"><a href="#">主页</a> </li>
				<!--<li class="dropdown">
					<a href="#" class="dropdown-toggle"	data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">CATEGORIES <span class="caret"></span></a>
					<ul class="dropdown-menu dropdowncostume">
						<li><a href="#">Sport</a></li>
						<li><a href="#">Old</a></li>
						<li><a href="#">New</a></li>
					</ul>
				</li>-->
				<li class="active"><a href="#">书架</a> </li>
				
				<li class="action"><a href="#">我的订单</a> </li>
				<li class="action"><a href="#">我的购物车</a> </li>
				<!--<li>
					<a href="contact.html">CONTACT</a>
 
				</li>-->
				<button><span class="postnewcar">不 要 点 我</span></button>
			</ul>
		</div>
	</nav>
</div>
<!--_______________________________________ Carousel__________________________________ -->
<div class="allcontain">
	<div id="carousel-up" class="carousel slide" data-ride="carousel">
		<div class="carousel-inner " role="listbox">
			<div class="item active">
				<a href="#"><img src="${ctx}/staticfile/img/home/ts.jpg" alt="ts"> </a>
			</div>
			<div class="item">
				<a href="#"><img src="${ctx}/staticfile/img/home/st.jpg" alt="st"></a>
			</div>
			<div class="item">
				<a href="#"><img src="${ctx}/staticfile/img/home/zxhy.jpg" alt="zxhy"></a>
			</div>
		</div>
  
		<nav class="navbar navbar-default midle-nav">
			
			<div class="collapse navbar-collapse" id="navbarmidle">
				<div class="searchtxt">
					<h1>搜索</h1>
				</div>
				<form class="navbar-form navbar-left searchformmargin" role="search">
					<div class="form-group">
						<input type="text" class="form-control searchform" placeholder="关键字">
					</div>
				</form>
				<ul class="nav navbar-nav navbarborder">
					<li class="li-category">
						<a class="btn  dropdown-toggle btn-costume"  id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">类型<span class="glyphicon glyphicon-chevron-down downicon"></span></a>
						<ul class="dropdown-menu" id="mydd">
							<li><a href="#">文学</a></li>
							<li><a href="#">科幻</a></li>
							<li><a href="#">历史</a></li>
							<li><a href="#">宗教</a></li>
							<li><a href="#">管理</a></li>
							<li><a href="#">少儿</a></li>
						</ul>
					</li><li class="li-category">
						<a class="btn  dropdown-toggle btn-costume"  id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">装帧<span class="glyphicon glyphicon-chevron-down downicon"></span></a>
						<ul class="dropdown-menu" id="mydd2">
							<li><a href="#">平装</a></li>
							<li><a href="#">精装</a></li>
							<li><a href="#">Kidle电子书</a></li>
							<li><a href="#">纸板书</a></li>
						</ul>
					</li>
					<!--<li class="li-minyear"><a class="btn  dropdown-toggle btn-costume"  id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Min Year <span class="glyphicon glyphicon-chevron-down downicon"></span></a>
						<ul class="dropdown-menu" id="mydd2">
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
						</ul>
					</li>
					<li class="li-maxyear"><a class="btn dropdown-toggle btn-costume"  id="dropdownMenu3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Max Year <span class="glyphicon glyphicon-chevron-down downicon"></span></a>
						<ul class="dropdown-menu" id="mydd3">
							<li><a href="#">1900</a></li>
							<li><a href="#">2000</a></li>
							<li><a href="#">2016</a></li>
						</ul>
					</li>-->
					<li class="li-slideprice">
						<p> <label class="slidertxt" for="amount">Price </label>
							<input class="priceslider" type="text" id="amount" readonly="readonly">
						</p>
							<div id="slider-range"></div>
							
					</li>
					<li class="li-search"> <button class="searchbutton"><span class="glyphicon glyphicon-search "></span></button></li>
				</ul>
 
			</div>
		</nav>
	</div>
</div>
<!-- ____________________Featured Section ______________________________--> 
<div class="allcontain">
	
<!-- ________________________LATEST CARS SECTION _______________________-->
<div class="latestcars">
	<h1 class="text-center">&bullet; 热  门  分  类 &bullet;</h1>
</div>
<!-- ________________________Latest Cars Image Thumbnail________________-->
	<div class="grid">
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div class="txthover">
					<img src="${ctx}/staticfile/img/home/gx.jpg" alt="gx">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">国学</h3>
								<p>"国学书店提供最丰富的国学图书，<br>
	 							书店拥有经部,史部,子部,集部,国学普及书目,辞典,古籍等书籍" </p>				
	 							<button onclick="javascrtpt:window.location.href='#'">打开书架</button><br>
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
				</div>	 
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 ">
				<div class="txthover">
					<img src="${ctx}/staticfile/img/home/jj.jpg" alt="jj">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">经济管理</h3>
								<p>"书店中的经济管理图书，<br>
	 							包括世界及各国经济概况,市场营销,管理学,投资理财,企业经营与管理,贸

易经济" </p>				
	 							<button onclick="javascrtpt:window.location.href='#'">打开书架</button><br>
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
				</div>	 
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div class="txthover">
					<img src="${ctx}/staticfile/img/home/ls.jpg" alt="ls">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">历史</h3>
								<p>"书店历史书籍专区为您陈列了4万多本精美历史书籍，<br>
	 							内容主题包罗万象,有《明朝那些事儿》,《台湾往事》等中国历史书籍,有《旧制度与大革
命》等欧洲历史书籍等" </p>
	 							<button onclick="javascrtpt:window.location.href='#'">打开书架</button><br>
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
				</div>	 
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div class="txthover">
					<img src="${ctx}/staticfile/img/home/se.jpg" alt="se">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">少儿</h3>
								<p>"少儿图书专区为您精选了海量优质少儿图书作品，<br>
	 							从幼儿启蒙,儿童文学,手工游戏,科普百科,儿童绘本,儿童教育,少儿英语等超过十万种书籍" </p>
	 							<button onclick="javascrtpt:window.location.href='#'">打开书架</button><br>
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
				</div>	 
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div class="txthover">
					<img src="${ctx}/staticfile/img/home/wx.jpg" alt="wx">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">文学</h3>
								<p>"文学书店提供最丰富的文学图书，<br>
	 							包括中国文学,外国文学，散文随笔，影视文学等数十万种书籍" </p>
	 							<button onclick="javascrtpt:window.location.href='#'">打开书架</button><br>
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
				</div>	 
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div class="txthover">
					<img src="${ctx}/staticfile/img/home/xs.jpg" alt="xs">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">小说</h3>
								<p>"小说书店提供最丰富的小说图书，<br>
	 							包括拥有侦探小说，科幻小说，魔幻小说，奇幻小说，恐怖小说等" </p>
	 							<button onclick="javascrtpt:window.location.href='#'">打开书架</button><br>
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
				</div>	 
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div class="txthover">
					<img src="${ctx}/staticfile/img/home/xl.jpg" alt="xl">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">心理学</h3>
								<p>"心理学专区销售的心理学书籍，<br>
	 							包括销售心理学、心理学与生活、行为心理学、犯罪心理学、教育心理学、社会心理学、心理学与读心术" </p>
	 							<button onclick="javascrtpt:window.location.href='#'">打开书架</button><br>
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
				</div>	 
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div class="txthover">
					<img src="${ctx}/staticfile/img/home/zx.jpg" alt="zx">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">哲学宗教</h3>
								<p>"哲学书籍专区我们为您专门检索了数万本古今中外的经典哲学名著<br>
	 							其中包含了人气最高的马克思哲学、西方哲学、中国哲学、逻辑学、伦理学等等" </p>
	 							<button onclick="javascrtpt:window.location.href='#'">打开书架</button><br>
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
				</div>	 
			</div>	
		</div>
	</div>
<!-- _______________________________News Letter ____________________-->
	<div class="newslettercontent">
		<div class="leftside">
			<img src="${ctx}/staticfile/img/home/border.png" alt="border">
			<h1>NEWSLETTER</h1>
			<p>Subscribe to the COLLECTIONCARS mailing list to <br>
				receive updates on new arrivals, special offers <br>
				and other discount information.</p>
		</div>
		<div class="rightside">
			<img class="newsimage" src="${ctx}/staticfile/img/home/newsletter.jpg" alt="newsletter">
			<input type="text" class="form-control" id="subemail" placeholder="EMAIL">
			<button>SUBSCRIBE</button>
		</div>
	</div>
	<!-- ______________________________________________________Bottom Menu ______________________________-->
	<div class="bottommenu">
		<ul class="nav nav-tabs bottomlinks">
			<li role="presentation" ><a href="#/" role="button">关于我们</a></li>
			<li role="presentation"><a href="#/">免责声明</a></li>
			<li role="presentation"><a href="#/">帮助中心和购物指南</a></li>
			<li role="presentation"><a href="#/">合作信息</a></li>
		</ul>
		<p>Copyright © 2011-2015 达内软件技术有限公司 版权所有 保留一切权利 苏B2-20130048号 | 京ICP备09062682号-9 <br>
			网络文化经营许可证苏网文[2012]0401-019号 </p>
		 <img src="${ctx}/staticfile/img/home/line.png" alt="line"> <br>
		 <div class="bottomsocial">
		 	<a href="#"><i class="fa fa-facebook"></i></a>
			<a href="#"><i class="fa fa-twitter"></i></a>
			<a href="#"><i class="fa fa-google-plus"></i></a>
			<a href="#"><i class="fa fa-pinterest"></i></a>
		</div>
			<div class="footer">
				<div class="copyright">
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp我也不知道写啥了，只是为了好看
				</div>
				<div class="atisda"></div>
			</div>
	</div>
</div>

<script type="text/javascript" src="${ctx}/staticfile/bootstrap-3.3.6-dist/js/jquery.js"></script>
<script type="text/javascript" src="${ctx}/staticfile/js/isotope.js"></script>
<script type="text/javascript" src="${ctx}/staticfile/js/myscript.js"></script> 
<script type="text/javascript" src="${ctx}/staticfile/bootstrap-3.3.6-dist/js/jquery.1.11.js"></script>
<script type="text/javascript" src="${ctx}/staticfile/bootstrap-3.3.6-dist/js/bootstrap.js"></script>
</body>
</html>