<%@page import="ustc.sse.water.utils.ImgReadUtil"%>
<%@page import="ustc.sse.water.pojo.Image"%>
<%@page import="ustc.sse.water.constants.CommonConstant"%>
<%@page import="ustc.sse.water.pojo.Buyer"%>
<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta>
<title>E-Mall</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<link href="<%=request.getContextPath()%>/static/css/bootstrap.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/static/css/sidebar.css"
	rel="stylesheet">
<style type="text/css">
body {
	padding-top: 60px;
	padding-bottom: 40px;
}

.sidebar-nav {
	padding: 9px 0;
}

@media ( max-width : 980px) {
	/* Enable use of floated navbar text */
	.navbar-text.pull-right {
		float: none;
		padding-left: 5px;
		padding-right: 5px;
	}
}
</style>
<link
	href="<%=request.getContextPath()%>/static/css/bootstrap-responsive.css"
	rel="stylesheet">

</head>
<body>
	<jsp:include page="/WEB-INF/views/main/head.jsp"></jsp:include>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span2">
				<div class="well sidebar-nav" style="border: 1px solid #000;">
					<div class="row-fluid"
						style="text-align: center; border: 2px solid #000; border-left: 0; border-right: 0; border-top: 0;">
						<strong>全部商品分类</strong>
					</div>
					<c:forEach var="item_firstLevel" items="${sessionScope.ProductTypes}" >
						<div class="sidelist row-fluid" style="border: 1px solid #fff; height: 26px;
								 border-left: 0; border-right: 0; border-top: 0;">
							<span>
								<h3>
									<a href="search?productname=${item_firstLevel.name}">&nbsp;&nbsp;&nbsp;${item_firstLevel.name}</a>
								</h3>
							</span>
							<div class="i-list">
								<dl>
									<c:forEach var="item_secondLevel" items="${item_firstLevel.childTypes}">
										<dt>
											<a href="search?productname=${item_secondLevel.name}">${item_secondLevel.name}</a>
										</dt>
										<dd>
											<c:forEach var="item_thirdLevel" items="${item_secondLevel.childTypes}">
												<em><a href="search?productname=${item_thirdLevel.name}">${item_thirdLevel.name}</a></em> 
												<em>|</em>
											</c:forEach>
										</dd>
									</c:forEach>
								</dl>
							</div>
						</div>
					</c:forEach>
					
					
					  <!-- <ul class="nav nav-list">
		              <li class="nav-header">Sidebar</li>
		              <li class="sidelist"><a href="#">图书、音响、数字商品</a></li>
		              <li class=""><a href="#">Link</a></li>
		              <li><a href="#">Link</a></li>
		              <li><a href="#">Link</a></li>
		              <li class="nav-header">Sidebar</li>
		              <li><a href="#">Link</a></li>
		              <li><a href="#">Link</a></li>
		              <li><a href="#">Link</a></li>
		              <li><a href="#">Link</a></li>
		              <li><a href="#">Link</a></li>
		              <li><a href="#">Link</a></li>
		              <li class="nav-header">Sidebar</li>
		              <li><a href="#">Link</a></li>
		              <li><a href="#">Link</a></li>
		              <li><a href="#">Link</a></li>
		              </ul> -->
				</div>
				<!-- /.well -->
			</div>
			<!--/span-->
			<div class="span7">
				<div id="myCarousel" class="carousel slide">
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
						<li data-target="#myCarousel" data-slide-to="3"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item active">
							<a href="#" class="thumbnail">
							 <img src="<%=request.getContextPath()%>/static/images/igdej.jpg"
								data-src="holder.js/100%x180" alt="Responsive image">
							</a>
							<div class="carousel-caption">
								<h4>足不出户</h4>
								<p>为人民服务</p>
							</div>
						</div>
						<c:forEach var="item_Adv" items="${sessionScope.Advertisements}">
							<div class="item">
								<a href="#" class="thumbnail"> 
									<img src="<%=request.getContextPath()%>/imgout?imgurl=${item_Adv.imageURL}"
										data-src="holder.js/100%x180" alt="Responsive image">
								</a>
								<div class="carousel-caption">
									<p>${item_Adv.profile}</p>
								</div>
							</div>
						</c:forEach>
					</div>
					<a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
					<a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
				</div>
			</div>
			<!--/span-->
			<div class="span3">
				<div class="hero-unit">
					<h2 align="center">公告</h2>
					<% int i = 1;%>
					<c:forEach var="item_Anno" items="${sessionScope.Announcements}" >
						<p class="text-left">
							<%=i%>. 
							<a href="<%=request.getContextPath()%>/announcement?anno_id=${item_Anno.id}" >${item_Anno.title}</a>
						</p>
						<%i = i + 1;%> 
					</c:forEach>
				</div>
			</div>
			<!-- /span -->
		</div>
		<!--/row-->

		<div>
			<h3>
				<p class="text-info">
					<strong>今日畅销Top3</strong>
				</p>
			</h3>
		</div>

		<div class="row-fluid">
			<c:if test="${!empty sessionScope.top3 }">
				<c:forEach var="top3" items="${sessionScope.top3}">
					<div class="span4">
						<a class="thumbnail"
							onclick="window.location.href='<%=request.getContextPath()%>/toDetail?id=${top3.productId}'">
							<img data-src="holder.js/200x200" 
								src="<%=request.getContextPath()%>/imgout?imgurl=${top3.mainImgUrl}" 
								class="img-rounded" width="200px" height="200px">
						</a>
						<div class="caption">
							<a onclick="window.location.href='<%=request.getContextPath()%>/toDetail?id=${top3.productId}'">
								<p class="text-center">${top3.productName}&nbsp;${top3.price}￥</p>
							</a>
						</div>
					</div>
				</c:forEach>
			</c:if>
		</div>
		<!--/row-->

		<div>
			<h3>
				<p class="text-info">
					<strong>新品上市</strong>
				</p>
			</h3>
		</div>
		<div>
			<c:if test="${!empty sessionScope.newPros }">
				<c:forEach var="newPro" items="${sessionScope.newPros}">
					<div class="span3">
						<a class="thumbnail"
							onclick="window.location.href='<%=request.getContextPath()%>/toDetail?id=${newPro.productId}'">
							<img data-src="holder.js/100%x180" alt="Responsive image"
							src="<%=request.getContextPath()%>/imgout?imgurl=${newPro.mainImgUrl}"
							class="img-rounded img-responsive"
							style="hight: 200px; width: 200px">
						</a>
						<div class="caption">
							<a onclick="window.location.href='<%=request.getContextPath()%>/toDetail?id=${newPro.productId}'">
								<p class="text-center">${newPro.productName}&nbsp;${newPro.price}￥</p>
							</a>
						</div>
					</div>
				</c:forEach>
			</c:if>
		</div>
		<!--/row-->
		<div><hr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
		

		<div class="row-fluid">
			<div class="span3">
				<div align="center">
					<h4>我是新手</h4>
				</div>
				<div align="center">
					<a href="#">购物流程</a>
				</div>
				<div align="center">
					<a href="#">常见问题</a>
				</div>
				<div align="center">
					<a href="#">联系客服</a>
				</div>
			</div>
			<!-- /span -->
			<div class="span3">
				<div align="center">
					<h4>支付方式</h4>
				</div>
				<div align="center">
					<a href="#">货到付款</a>
				</div>
				<div align="center">
					<a href="#">支付宝</a>
				</div>
				<div align="center">
					<a href="#">分期付款</a>
				</div>
				<div align="center">
					<a href="#">邮局汇款</a>
				</div>
			</div>
			<!-- /span -->
			<div class="span3">
				<div align="center">
					<h4>配送方式</h4>
				</div>
				<div align="center">
					<a href="#">上门提货</a>
				</div>
				<div align="center">
					<a href="#">EMS</a>
				</div>
				<div align="center">
					<a href="#">其他快递</a>
				</div>
			</div>
			<!-- /span -->
			<div class="span3">
				<div align="center">
					<h4>售后服务</h4>
				</div>
				<div align="center">
					<a href="#">售后政策</a>
				</div>
				<div align="center">
					<a href="#">退款说明</a>
				</div>
				<div align="center">
					<a href="#">退换货</a>
				</div>
				<div align="center">
					<a href="#">取消订单</a>
				</div>
			</div>
			<!-- /span -->
		</div>

		<hr>

		<footer>
		<p class="text-center">&copy; J2ee.ustcsz.edu 2013, All Rights
			Reserved</p>
		</footer>

	</div>
	<!--/.fluid-container-->

	<!-- Le javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="<%=request.getContextPath()%>/static/js/jquery.js"></script>
	<script
		src="<%=request.getContextPath()%>/static/js/bootstrap-transition.js"></script>
	<script
		src="<%=request.getContextPath()%>/static/js/bootstrap-alert.js"></script>
	<script
		src="<%=request.getContextPath()%>/static/js/bootstrap-modal.js"></script>
	<script
		src="<%=request.getContextPath()%>/static/js/bootstrap-dropdown.js"></script>
	<script
		src="<%=request.getContextPath()%>/static/js/bootstrap-scrollspy.js"></script>
	<script src="<%=request.getContextPath()%>/static/js/bootstrap-tab.js"></script>
	<script
		src="<%=request.getContextPath()%>/static/js/bootstrap-tooltip.js"></script>
	<script
		src="<%=request.getContextPath()%>/static/js/bootstrap-popover.js"></script>
	<script
		src="<%=request.getContextPath()%>/static/js/bootstrap-button.js"></script>
	<script
		src="<%=request.getContextPath()%>/static/js/bootstrap-collapse.js"></script>
	<script
		src="<%=request.getContextPath()%>/static/js/bootstrap-carousel.js"></script>
	<script
		src="<%=request.getContextPath()%>/static/js/bootstrap-typeahead.js"></script>
	<script
		src="<%=request.getContextPath()%>/static/js/sidebar-js/jquery-1.3.2.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/static/js/sidebar-js/sidebar.js"></script>

</body>
</html>