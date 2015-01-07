<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
    <title>付款</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/main/head.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span2 text-info text-center" 
				style="height: 80px;background-color: #f5f5f5;padding:10px; border-radius:20px;">
				<h2><strong>付款</strong></h2>
			</div>
			<div class="span10">
				<div class="span2" style="height: 80px;text-align: center;margin-top: 25px;margin-left: 100px;">
					<button class="btn btn-large btn-danger" style="width:150px;" disabled="disabled">查看购物车 <i class="icon-hand-right icon-white"></i></button>
				</div>
				<div class="span2" style="height: 80px;text-align: center;margin-top: 25px;margin-left: 10px;">
					<button class="btn btn-large btn-danger" style="width:150px;" disabled="disabled">确认订单 <i class="icon-hand-right icon-white"></i></button>
				</div>
				<div class="span2" style="height: 80px;text-align: center;margin-top: 25px;margin-left: 10px;">
					<button class="btn btn-large btn-danger" style="width:150px;">付款 <i class="icon-hand-right icon-white"></i></button>
				</div>
				<div class="span2" style="height: 80px;text-align: center;margin-top: 25px;margin-left: 10px;">
					<button class="btn btn-large btn-danger" style="width:150px;" disabled="disabled">确认收货 <i class="icon-hand-right icon-white"></i></button>
				</div>
				<div class="span2" style="height: 80px;text-align: center;margin-top: 25px;margin-left: 10px;">
					<button class="btn btn-large btn-danger" style="width:150px;" disabled="disabled">评价</button>
				</div>
			</div>
		</div><!-- row 1 -->
		<div class="row-fluid">
			<c:if test="${empty nopays}">
				<div style="text-align: center;">
					<h2>没有需要付款的订单！</h2>
				</div>
			</c:if>
			<c:if test="${!empty nopays}">
				<table class="table table-hover">
	              <thead>
	                <tr>
	                  <th>商品</th>
	                  <th>商品信息</th>
	                  <th>单价</th>
	                  <th>数量</th>
	                  <th>小计</th>
	                  <th>操作</th>
	                </tr>
	              </thead>
	              <tbody>
	              	
					<c:forEach var="order" items="${nopays}" varStatus="idx">
						<script>
							$(function(){
								$("#${idx.index}_btn").click(function(){
									$.ajax(
											{
												url:"<%=request.getContextPath()%>/BuyerController/payManager?id=${order.id}",
												type:"post",
												data:{buyNum:"${order.count}"},
												success:function (data){
													alert("付款成功！");
													$("#${idx.index}_tr").remove();
												}
											}
										);
								});
								
							});
						</script>
						<tr id="${idx.index}_tr">
		                  <td>${order.product.productName}</td>
		                  <td>
		                  	${order.productIllustration}
		                  </td>
		                  <td>${order.product.price}</td>
		                  <td>${order.count}</td>
		                  <td>
		                  <fmt:formatNumber value="${order.product.price * order.count}" type="currency" pattern="￥.00"/>
		                  </td>
		                  <td>
		                  	<button class="btn btn-danger" id="${idx.index}_btn">付款</button>
		                  </td>
		                </tr>
					</c:forEach>              	
	                
	              </tbody>
	            </table>
			</c:if>
		</div><!-- row 2 -->
		<div class="row-fluid" style="margin-top: 10px;">
		</div><!-- row 3 -->
		<div class="row-fluid">
		</div><!-- row 4 -->
	</div><!-- container -->
	<footer>
    	<p class="text-center">&copy; J2ee.ustcsz.edu 2013, All Rights Reserved</p>
  	</footer>
</body>
</html>