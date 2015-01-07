<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<link href="<%=request.getContextPath() %>/static/css/bootstrap.css" rel="stylesheet">
 	<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery.js"></script> 
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrap-scrollspy.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery-1.4.2.min.js"></script>
    <style type="text/css">
		 body {
            padding-top: 20px;
            padding-bottom: 40px;
			padding-right: 20px;
          }
    </style>
    <title>我的收藏夹</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/main/head.jsp"></jsp:include>

	<div class="container-fluid">
		<div class="row-fluid">
			<script type="text/javascript">
				$(function() {
					$("#checkAll1").click(function() {
						$('input[name="subBox1"]').attr("checked", this.checked);
					});
					
					var $subBox1 = $("input[name='subBox1']");
					
					$subBox1.click(function() {
						$("#checkAll1").attr("checked",
											$subBox1.length == $("input[name='subBox1']:checked").length ? true : false);
					});
					$("#sub1").click(function(){
			            	var selectp="";
			            	$("input[name='subBox1']:checked").each(function(){
			            		selectp += this.value + ",";
			            		});
			            	$.ajax({
			            		url:"<%=request.getContextPath()%>/BMgrLoader/deleteFavoritess",
			            		type:'post',
			            		data:{select:selectp},
			            		success:function (data){
			            			 window.location.href="<%=request.getContextPath()%>/BMgrLoader/loadConnection";
								}
			            	});
			            });
					 
					$("#checkAll2").click(function() {
						$('input[name="subBox2"]').attr("checked", this.checked);
					});
		
					var $subBox2 = $("input[name='subBox2']");
					
					$subBox2.click(function() {
						$("#checkAll2").attr("checked",
											$subBox2.length == $("input[name='subBox2']:checked").length ? true : false);
					});
					
					$("#sub2").click(function(){
		            	var selectp="";
		            	$("input[name='subBox2']:checked").each(function(){
		            		selectp += this.value + ",";
		            		});
		            	$.ajax({
		            		url:"<%=request.getContextPath()%>/BMgrLoader/deleteFavoritess",
		            		type:'post',
		            		data:{select:selectp},
		            		success:function (data){
		            			 window.location.href="<%=request.getContextPath()%>/BMgrLoader/loadConnection";
							}
		            	});
		            });
				});
		        
		    </script>
			<section id="proctuct">
				<div class="page-header">
					<h1>1. 商品收藏</h1>
				</div>
				<div class="row-fluid">
					<c:if test="${empty sessionScope.fav_Products}">
						<div class="hero-unit well">
							<img alt="" src="<%=request.getContextPath()%>/static/images/T141OmXtFXXXXfNwfm-71-78.png">
							<h1>您还没有收藏过商品哦</h1>
						</div>
					</c:if>
					<c:if test="${!empty sessionScope.fav_Products}">
						<table class="table table-hover" id="productTable">
							<thead>
								<tr>
									<th><input type="checkbox" id="checkAll1"/> 全选 </th>
									<th>商品</th>
									<th>售价</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item_fav_product" items="${sessionScope.fav_Products}" 
										varStatus="idx_fav_product">
									<script>
										$(function(){
											
											$("#${idx_fav_product.index}_delProBtn").click(function(){
												var url_ = "<%=request.getContextPath()%>/BMgrLoader/delFromFavorites";
												$.ajax(
														{
															url:url_,
															type:"get",
															data:{itemId:"${item_fav_product.id}"},
															success:function (data){
																$("#${idx_fav_product.index}_tr_pro").remove();
															}
														}
													);
											});
											
										});
									</script>
								
									<tr id="${idx_fav_product.index}_tr_pro">
										<td width="150px;">
											<label class="checkbox"> 
												<input type="checkbox" name="subBox1" value="${item_fav_product.id}">
											</label> 
											<img data-src="holder.js/200x200" 
								src="<%=request.getContextPath()%>/imgout?imgurl=${item_fav_product.product.mainImgUrl}" 
								class="img-rounded" width="200px" height="200px">
										</td>
										<td>
											${item_fav_product.product.productName}
										</td>
										<td>
											${item_fav_product.product.price}
										</td>									
										<td>
											<button class="btn btn-danger btn-small" id="${idx_fav_product.index}_delProBtn">
													删&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp除</button>
											<br><br>
											<a class="btn btn-small btn-info" href="<%=request.getContextPath()%>/toDetail?id=${item_fav_product.product.productId}" target="_top">进入购买</a>
											</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<button class="btn btn-danger btn-small" id="sub1">删除</button>
					</c:if>
				</div>
			</section>
			
			<!-- 店铺收藏       ========================================================== -->
			<section id="file-structure">
				<div class="page-header">
					<h1>2. 店铺收藏</h1>
				</div>

				<div class="row-fluid">
					<c:if test="${empty sessionScope.fav_Shops}">
						<div class="hero-unit well">
							<img alt="" src="<%=request.getContextPath()%>/static/images/T141OmXtFXXXXfNwfm-71-78.png">
							<h1>您还没有收藏过店铺哦</h1>
						</div>
					</c:if>
					<c:if test="${!empty sessionScope.fav_Shops}">
						<table class="table table-hover">
							<thead>
								<tr>
									<th><input type="checkbox" id="checkAll2"/> 全选 </th>
									<th>店铺名</th>
									<th>店铺人气</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="item_fav_shop" items="${sessionScope.fav_Shops}" varStatus="idx_fav_shop">
								<script>
									$(function(){
										$("#${idx_fav_shop.index}_delShopBtn").click(function(){
											var url_ = "<%=request.getContextPath()%>/BMgrLoader/delFromFavorites";
											$.ajax(
													{
														url:url_,
														type:"get",
														data:{itemId:"${item_fav_shop.id}"},
														success:function (data){
															$("#${idx_fav_shop.index}_tr_shop").remove();
														}
													}
												);
										});
										
										$("#${idx_fav_shop.index}_toShopBtn").click(function(){
											alert("222222");
										});
									});
									</script>
									<tr id="${idx_fav_shop.index}_tr_shop">
										<td width="150px;">
											<label class="checkbox"> 
												<input type="checkbox" name="subBox2" value="${item_fav_shop.id}">
											</label> 
										</td>
										<td>
											${item_fav_shop.shop.shopName}
										</td>
										<td>
											${item_fav_shop.shop.evaluateNum}
										</td>									
										<td>
											<button class="btn btn-danger btn-small" id="${idx_fav_shop.index}_delShopBtn">
												删&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp除</button>
											<br><br>
											<a class="btn btn-small btn-info" href="<%=request.getContextPath()%>/toSellerShop?id=${item_fav_shop.shop.shopId}" target="_top">进入店铺</a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<button class="btn btn-danger btn-small" id="sub2">删除</button>
					</c:if>
				</div>
			</section>
		</div>
	</div><!-- container -->
	<footer>
    	<p class="text-center">&copy; J2ee.ustcsz.edu 2013, All Rights Reserved</p>
  	</footer>
</body>
</html>