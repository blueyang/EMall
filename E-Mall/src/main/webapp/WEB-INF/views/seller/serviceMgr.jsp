<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Fonts -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,900,700italic,500italic' rel='stylesheet' type='text/css'>

<!-- Stylesheets -->

<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/perfect-scrollbar.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/flexslider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/fontello.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/settings.css" media="screen" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/animation.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/jquery.fancybox.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/owl.carousel.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/owl.theme.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/chosen.css">

<link href="<%=request.getContextPath() %>/static/css/bootstrap.css" rel="stylesheet">
<script src="<%=request.getContextPath() %>/static/js/jquery.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/static/js/bootstrap.js"  type="text/javascript"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrap-scrollspy.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery-1.4.2.min.js"></script>
    <style type="text/css">
          body {
            padding-top: 20px;
            padding-bottom: 40px;
			padding-right: 20px;
          }
          .sidebar-nav {
            padding: 9px 0;
          }
		  .fade {
			opacity: 0;
			-webkit-transition: opacity 0.15s linear;
			-moz-transition: opacity 0.15s linear;
			-o-transition: opacity 0.15s linear;
			transition: opacity 0.15s linear;
		}
		.fade.in {
			opacity: 1;
		}
    
          @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
              float: none;
              padding-left: 5px;
              padding-right: 5px;
            }
          }
        </style>
   
<title>Insert title here</title>
</head>
<body>
<div class="container">
								
			<div class="col-lg-12 col-md-12 col-sm-12">
								
				<div class="tabs">
								
					<div class="tab-heading">
						<a href="#tab1" class="button small">评价管理</a>
						<a href="#tab2" class="button small">投诉记录</a>
					</div>
									
				<div class="page-content tab-content">
										
					<div id="tab1">
					
                    <div class="row">
                    	
                        <div class="col-lg-12 col-md-12 col-sm-12">
                        	
                            <table class="order-table">
                            	
                                <tr>
                                	<td><h5>订单</h5></td>
                                	<td><h5>订单编号</h5></td>
                                	<td><h5>买家</h5></td>
                                	<td><h5>店铺打分</h5></td>
                                	<td><h5>下单时间</h5></td>
                                    <td><h5>更新时间</h5></td>
                                    <td><h5>操作</h5></td>
                                </tr>
                                <c:forEach var="order" items="${evaluatedOrders }" varStatus="idx">
                                                                
                                <script>
								$(function(){
									
									$("#${idx.index}_scoreBtn").click(function(){
										$.ajax(
												{
													url:"<%=request.getContextPath()%>/SellerController/scoreBuyer?",
													type:"post",
													data:{id:"${order.id}", score:$("#${idx.index}_tr_score").val()},
													success:function (data){
														alert("评价处理成功");
														$("#${idx.index}_tr").remove();
													}
												}
											);
									});
									
									$('#${idx.index}_lookInfo').click(function(){
							              $('#${idx.index}_orderInfo').modal('toggle');
							          });
									
									$('#${idx.index}_score').click(function(){
							              $('#${idx.index}_myModal').modal('toggle');
							          });
								});
								
								var options={
							              backdrop:true,
							              keyboard:true,
							              show:true
							          
							          }
								</script>
                                <tr id="${idx.index}_tr">
                                	<td>
                                    	<p>${idx.count}</p>                                       
                                    </td>
                                	<td class="order-number">
                                    	<p><a id="${idx.index}_lookInfo" href="#">${order.orderID}</a></p>
                                    	
                                    	<div id="${idx.index}_orderInfo" class="modal hide fade">
								           <div class="modal-header">
								          	  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
								      	   	  <h3 id="myModalLabel">订单详情</h3>
								    	</div>
								    	<div class="modal-body">
									      <table class="order-table">
									      	<tr>
									      		<td>订单号</td>
									      		<td>${order.orderID }</td>
									      	</tr>
									      	<tr>
									      		<td>订单状态</td>
									      		<td>买家已评价</td>
									      	</tr>
									      	<tr>
									      		<td>买家用户名</td>
									      		<td>${order.buyer.username }</td>
									      	</tr>
									      	<tr>
									      		<td>买家联系电话</td>
									      		<td>${order.buyer.telNum }</td>
									      	</tr>
									      	<tr>
									      		<td>送货地址</td>
									      		<td>${order.receiveInfo }</td>
									      	</tr>
									      	<tr>
									      		<td>商品名称</td>
									      		<td>${order.product.productName }</td>
									      	</tr>
									      	<tr>
									      		<td>商品编号</td>
									      		<td>${order.product.productId }</td>
									      	</tr>
									      	<tr>
									      		<td>购买数量</td>
									      		<td>${order.count }</td>
									      	</tr>
									      	<tr>
									      		<td>价格总计</td>
									      		<td>
									      		<fmt:formatNumber value="${order.product.price * order.count}" type="currency" pattern="￥.00"/>
									      		</td>
									      	</tr>
									      	<tr>
									      		<td>订单提交时间</td>
									      		<td>${order.postTime }</td>
									      	</tr>
									      	<tr>
									      		<td>订单更新时间</td>
									      		<td>${order.updateTime}</td>
									      	</tr>
									      										      	
									      </table>	
									      </div>
								</div>                                      
                                    </td>
                                    <td>
                                    	<p>${order.buyer.username}</p>                                      
                                    </td>
                                    <td>
                                    	<p>4</p>                                      
                                    </td>
                                    <td>
                                    	<p>${order.postTime}</p>                                      
                                    </td>
                                    <td>
                                    	<p>${order.updateTime}</p>                                       
                                    </td>
                                                                        
                                    <td>
                                    	                        
                                        <a href="#">									              
                                            <span id="${idx.index}_score" class="add-to-cart">
                                                <span class="action-wrapper">
                                                    <i class="icons icon-dollar"></i>
                                                    <span class="action-name">打分</span>
                                                </span>
                                            </span>
                                            
                                        </a>
                                        <div id="${idx.index}_myModal" class="modal hide fade">
								           <div class="modal-header">
								          	  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
								      	   	  <h3 id="myModalLabel">向买家打分</h3>
								    	</div>
								    	<div class="modal-body">
									      <form class="form-horizontal">
									          <div class="control-group">
									              <label class="control-label">打分对象</label>
									                  <div class="controls">
									                      <input type="text" id="buyerName" placeholder="${order.buyer.username }" name="buyerName">
									                  </div>
									          </div>
									          
									          <div class="control-group">
									              <label class="control-label">打分分数</label>
									                  <div class="controls">
									                  
									                      <select id="${idx.index}_tr_score" name="score">
																				 <option value="5" selected>5</option>													
																				<option value="4">4</option>
																				<option value="3">3</option>
																				<option value="2">2</option>
																				<option value="1">1</option>
																				</select>
									                  </div>
									          </div>
									          
									          <div class="control-group">
									                  <div class="controls">
									                      <a href="#">
														              	<span class="add-to-cart">
							                                                <span class="action-wrapper">
							                                                    
							                                                    <span class="action-name" id="${idx.index}_scoreBtn">确定</span>									               									         									                                                                                                       
							                                                </span>
							                                            </span></a>
									                     </div>
									          </div>
									      </form>
									      </div>
									      </div>
									      
									      
							
                                    </td>
                                </tr>                                                                                                                         
                                </c:forEach>
                            </table>
                            
                        </div>
                     </div>
                                      
				</div>							
				<div id="tab2">
					
                    <div class="row">
                    	
                        <div class="col-lg-12 col-md-12 col-sm-12">
                        	
                            <table class="order-table">
                            	
                                <tr>
                                	<td><h5>订单</h5></td>
                                	<td><h5>订单编号</h5></td>
                                	<td><h5>买家</h5></td>                                	
                                	<td><h5>下单时间</h5></td>
                                    <td><h5>更新时间</h5></td>
                                    <td><h5>投诉内容</h5></td>
                                </tr>
                                <c:forEach var="order" items="${complaintedOrders }" varStatus="idx">
                                                     
                                
                                <tr id="${idx.index}_tr">
                                	<td>
                                    	<p>${idx.count}</p>                                       
                                    </td>
                                	<td class="order-number">
                                    	<p><a href="#">${order.orderID}</a></p>                                      
                                    </td>
                                    <td>
                                    	<p>${order.buyer.username}</p>                                      
                                    </td>
                                   
                                    <td>
                                    	<p>${order.postTime}</p>                                      
                                    </td>
                                    <td>
                                    	<p>${order.updateTime}</p>                                       
                                    </td>
                                                                        
                                    <td>
 							
                                    </td>
                                </tr>                                                                                                                         
                                </c:forEach>
                            </table>
                            
                        </div>
                     </div>
                                      
				</div>																												
												
			</div>						
		</div>
	</div>
	
							
</div>
	
<!-- JavaScript -->

		<script src="<%=request.getContextPath()%>/static/js/modernizr.min.js"></script>
		<script src="<%=request.getContextPath()%>/static/js/jquery-1.11.0.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/static/js/jquery.raty.min.js"></script>
		
		<!-- Scroll Bar -->
		<script src="<%=request.getContextPath()%>/static/js/perfect-scrollbar.min.js"></script>
		
		<!-- Cloud Zoom -->
		<script src="<%=request.getContextPath()%>/static/js/zoomsl-3.0.min.js"></script>
		
		<!-- FancyBox -->
		<script src="<%=request.getContextPath()%>/static/js/jquery.fancybox.pack.js"></script>
		
		<!-- jQuery REVOLUTION Slider  -->
		<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/jquery.themepunch.plugins.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/jquery.themepunch.revolution.min.js"></script>

		<!-- FlexSlider -->
		<script defer src="<%=request.getContextPath()%>/static/js/flexslider.min.js"></script>
		
		<!-- IOS Slider -->
		<script src = "<%=request.getContextPath()%>/static/js/jquery.iosslider.min.js"></script>
		
		<!-- noUi Slider -->
		<script src="<%=request.getContextPath()%>/static/js/jquery.nouislider.min.js"></script>
		
		<!-- Owl Carousel -->
		<script src="<%=request.getContextPath()%>/static/js/owl.carousel.min.js"></script>
		
		<!-- Cloud Zoom -->
		<script src="<%=request.getContextPath()%>/static/js/zoomsl-3.0.min.js"></script>
		
		<!-- SelectJS -->
        <script src="<%=request.getContextPath()%>/static/js/chosen.jquery.min.js" type="text/javascript"></script>
        
        <!-- Main JS -->
        <script defer src="<%=request.getContextPath()%>/static/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/static/js/main-script.js"></script>
</body>
</html>