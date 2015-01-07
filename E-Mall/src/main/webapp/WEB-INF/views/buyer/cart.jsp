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
    <title>我的购物车</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/main/head.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span2 text-info text-center" 
				style="height: 80px;background-color: #f5f5f5;padding:10px; border-radius:20px;">
				<h1><strong>购物车</strong></h1>
			</div>
			<div class="span10">
				<div class="span2" style="height: 80px;text-align: center;margin-top: 25px;margin-left: 100px;">
					<button class="btn btn-large btn-danger" style="width:150px;">查看购物车 <i class="icon-hand-right icon-white"></i></button>
				</div>
				<div class="span2" style="height: 80px;text-align: center;margin-top: 25px;margin-left: 10px;">
					<button class="btn btn-large btn-danger" style="width:150px;" disabled="disabled">确认订单 <i class="icon-hand-right icon-white"></i></button>
				</div>
				<div class="span2" style="height: 80px;text-align: center;margin-top: 25px;margin-left: 10px;">
					<button class="btn btn-large btn-danger" style="width:150px;" disabled="disabled">付款 <i class="icon-hand-right icon-white"></i></button>
				</div>
				<div class="span2" style="height: 80px;text-align: center;margin-top: 25px;margin-left: 10px;">
					<button class="btn btn-large btn-danger" style="width:150px;" disabled="disabled">确认收货 <i class="icon-hand-right icon-white"></i></button>
				</div>
				<div class="span2" style="height: 80px;text-align: center;margin-top: 25px;margin-left: 10px;">
					<button class="btn btn-large btn-danger" style="width:150px;" disabled="disabled">评价</button>
				</div>
			</div>
		</div><!-- row 1 -->
		<script type="text/javascript">
	        $(function() {
	           $("#checkAll").click(function() {
	                $('input[name="subBox"]').attr("checked",this.checked); 
	            });
	            var $subBox = $("input[name='subBox']");
	            $subBox.click(function(){
					$("#checkAll").attr("checked",$subBox.length == $("input[name='subBox']:checked").length ? true : false);
	            });
	        
	            $("#sub").click(function(){
	            	var selecte="";
	            	$("input[name='subBox']:checked").each(function(){
	            		selecte += this.value + ",";
	            		});
	            	$.ajax({
	            		url:"<%=request.getContextPath()%>/BuyerController/settle",
	            		type:'post',
	            		data:{select:selecte},
	            		success:function (data){
	            			 window.location.href="<%=request.getContextPath()%>/BuyerController/gotoOrder";
						}
	            	});
	            });
	        });
	        
	        function setTotal(a, b, c, d){
				if(parseInt(a) >= 1) {
					d.html((b*parseInt(a)).toFixed(2));
				} else {
					c.attr('color', "red");
					d.html("请输入正确的数量！");
				}
			}
	        
	    </script>
		<div class="row-fluid">
				<div class="row-fluid">
		           	<c:if test="${empty mydbCart}">
		           		<div class="hero-unit well">
					 		<h2>购物车是空的！</h2>
					 	</div>
		           	</c:if>
			           	<c:if test="${!empty mydbCart}">
			           		<table class="table table-hover">
				              <thead>
				                <tr>
				                  <th>
				                  	<!-- <label class="checkbox"> -->
		      							<input type="checkbox" id="checkAll"/> 全选
		    						<!-- </label> -->
		    					  </th>
				                  <th>商品</th>
				                  <th>商品信息</th>
				                  <th>单价</th>
				                  <th>数量</th>
				                  <th>小计</th>
				                  <th>操作</th>
				                </tr>
				              </thead>
				              <tbody>
				                <c:forEach var="item" items="${mydbCart}" varStatus="idx">
				                
				                <script>
								$(function(){
									$("#${idx.index}_add").click(function(){
										var t = $("#${idx.index}_text_box");
										if(parseInt(t.val())>=1){
											t.val(parseInt(t.val())+1);
											setTotal(parseInt($("#${idx.index}_text_box").val()), $("#${idx.index}_price").text(),
													$("#${idx.index}_msg"), $("#${idx.index}_total"));
										} else {
											$("#${idx.index}_add").attr('disabled',"true");
										}
										
									});
									$("#${idx.index}_min").click(function(){
										var t = $("#${idx.index}_text_box");
										if(parseInt(t.val())>=1){
											t.val(parseInt(t.val())-1);
											setTotal(parseInt($("#${idx.index}_text_box").val()), $("#${idx.index}_price").text(),
													$("#${idx.index}_msg"), $("#${idx.index}_total"));
										} else {
											$("#${idx.index}_min").attr('disabled',"true");
										}
									});
									
									$("#${idx.index}_text_box").change(function(){
										var t = $("#${idx.index}_text_box");
										if(parseInt(t.val())>=1){
											setTotal(parseInt($("#${idx.index}_text_box").val()), $("#${idx.index}_price").text(),
													$("#${idx.index}_msg"), $("#${idx.index}_total"));
										}
									});
									
									setTotal(parseInt($("#${idx.index}_text_box").val()), $("#${idx.index}_price").text(), $("#${idx.index}_msg"), $("#${idx.index}_total"));
								
									$("#${idx.index}_delBtn").click(function(){
										var url_ = "<%=request.getContextPath()%>/delFromCart?id=${item.product.productId}";
										$.ajax(
												{
													url:url_,
													type:"get",
													data:{itemId:"${item.product.productId}", itemDsc:"${item.productIllustration}"},
													success:function (data){
														$("#${idx.index}_tr").remove();
													}
												}
											);
									});
									
									$("#${idx.index}_colBtn").click(function(){
										var url_ = "<%=request.getContextPath()%>/BMgrLoader/addFavorites";
										$.ajax({
											url : url_,
											type : "post",
											data : {
													fid : "${requestScope.product.productId}",
													ftype : "1"
											},
											success : function(data) {
												alert(22);
											}
										});
									});
								});
								</script>
				                
					              	<tr id="${idx.index}_tr">
					                  <td width="150px;">
					                  	<label class="checkbox">
			      							<input type="checkbox" name="subBox" value="${item.id}"> 
			    						</label>
			    						<img src="<%=request.getContextPath()%>/imgout?imgurl=${item.product.mainImgUrl}">
			    					  </td>
					                  <td>${item.product.productName}</td>
					                  <td>
										${item.productIllustration}
					                  </td>
					                  <td id="${idx.index}_price">${item.product.price}</td>
					                  
					                  <td class="form-inline">
					                  		<input id="${idx.index}_min" class="btn" type="button" value="-" />
											<input id="${idx.index}_text_box" name="num" class="input-mini text-center" type="text" value="${item.addCount }"/>
											<input id="${idx.index}_add" class="btn" type="button" value="+" />
					                  </td>
					                  <td>
					                  	<p id="${idx.index}_msg" style="margin-top: 20px;"><label id="${idx.index}_total"></label></p>
					                  </td>
					                  <td>
					                  	<button class="btn btn-small" id="${idx.index}_delBtn">删除</button><br>
				                  		<button class="btn btn-small" id="${idx.index}_colBtn">收藏</button>
					                  </td>
					                </tr>
				              	</c:forEach>
				                <tr>
				                  <td colspan="4">
				                  	<a class="btn btn-danger" href="<%=request.getContextPath()%>">继续购物</a>
				                  </td>
				                  <td colspan="2"><!-- 合计: --></td>
				                  <td>
				                  	<button id="sub" class="btn btn-danger btn-large">结算</button>
				                  </td>
				                </tr>
				              </tbody>
				            </table>
			           	</c:if>
				</div>
		</div><!-- row 2 -->
		<!-- </form> -->
	</div><!-- container -->
	<footer>
    	<p class="text-center">&copy; J2ee.ustcsz.edu 2013, All Rights Reserved</p>
  	</footer>
</body>
</html>