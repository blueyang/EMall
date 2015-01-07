<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
     href="http://tarruda.github.com/bootstrap-datetimepicker/assets/css/bootstrap-datetimepicker.min.css">
<link href="<%=request.getContextPath() %>/static/css/bootstrap.css" rel="stylesheet">
 	<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery.js"></script> 
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrap-datetimepicker.min.js"></script>
    <style type="text/css">
		 body {
            padding-top: 20px;
            padding-bottom: 40px;
			padding-right: 20px;
          }
    </style>
</head>
<body>
	<ul class="nav nav-tabs">
     <li class="active"><a href="#nopay" data-toggle="tab" >等待付款</a></li>
     <li class=""><a href="#orderSearch" data-toggle="tab" >订单查询</a></li>
  	</ul>

  <div class="tab-content">
     <div class="tab-pane active" id="nopay">
        <div class="hero-unit">
        	<c:if test="${empty noPayOders}">
            	<div>
            		<h2>您没有未完成的订单！</h2>
            	</div>    		
            </c:if>
            <c:if test="${!empty noPayOders}">
           		<table class="table">
	            	<thead>
	                	<tr>
	                    	<th>商品</th>
	                        <th>订单号</th>
	                        <th>单价</th>
	                        <th>数量</th>
	                        <th>总计</th>
	                        <th>操作</th>
	                    </tr>
	                </thead>
	                <tbody>
	                	<c:forEach items="${noPayOders}" var="order">
	                		<tr>
		                    	<td width="100px">
		                    		<img src="<%=request.getContextPath()%>/imgout?imgurl=${order.product.mainImgUrl}">
								</td>
		                        <td>${order.orderID}</td>
		                        <td>${order.product.price}￥</td>
		                        <td>${order.count}</td>
		                        <td>
		                        	<fmt:formatNumber value="${order.product.price * order.count}" type="currency" pattern="￥.00"/>
		                        </td>
		                        <td>
		                        	<a class="btn btn-mini" href="<%=request.getContextPath()%>/BuyerController/payMoney" target="_top">付款</a>
		                            <button class="btn btn-mini">取消</button>
		                        </td>
		                    </tr>
	                	</c:forEach>
	                </tbody>
	            </table>
            </c:if>
        </div>
     </div>
     <div class="tab-pane" id="orderSearch">
     	<div class="hero-unit">
        	<div class="container-fluid">
                <div class="row-fluid">
                         商品名称: <input type="text" name="proName">
                         成交时间 从 <div id="datetimepicker1" class="input-append date">
      									<input type="text" name="timeBegin" class="input-medium"></input>
      									<span class="add-on">
        									<i data-time-icon="icon-time" data-date-icon="icon-calendar"></i>
      									</span>
    								</div>
                          至 <div id="datetimepicker2" class="input-append date">
      									<input type="text" name="timeEnd" class="input-medium"></input>
      									<span class="add-on">
        									<i data-time-icon="icon-time" data-date-icon="icon-calendar"></i>
      									</span>
    								</div>
                          <br><br>
                        订单编号: <input type="text" name="orderNum" class="input-large">
                        订单状态: <select id="orderStatus">
                        			<option value="3">待评价</option>
                                    <option value="0">未付款</option>
                                    <option value="2">已发货</option>
                                    <option value="1">未发货</option>
                                    <option value="4">交易成功</option>
                        		</select>
                        <button id="subBtn" class="btn">查询</button>
                </div>
                <script type="text/javascript">
                $(function() {
     	            $("#subBtn").click(function(){
     	            	var productName=$("input[name='proName']").val();
     	            	var tB = $("input[name='timeBegin']").val();
     	            	var tE = $("input[name='timeEnd']").val();
     	            	var orderNum = $("input[name='orderNum']").val();
     	            	var orderStatus = $("#orderStatus").val();
     	            	$("#result_table").remove();
     	            	$.getJSON(
     	            		"<%=request.getContextPath()%>/BuyerController/orderSearch",
     	            		{proName:productName, timeBegin:tB, timeEnd:tE, orderNum:orderNum, orderStatus:orderStatus},
     	            		function (data){
     	            			$("#tableName").html("查询结果");
     	            			$("#table").html("<table class='table' id='result_table'><thead id='thead'></thead><tbody id='tbody'></tbody></table>");
								if(data.length == 0){
									$("#result_table").html("查无结果！");
								} else {
									$("#thead").append("<tr><th>订单号</th><th>商品</th><th>数量</th><th>总价</th><th>订单状态</th></tr>");
									for (var i=0; i<data.length; i++) {
										$("#tbody").append("<tr><td>"+data[i].orderID+"</td><td>"+data[i].productName+"</td><td>"+data[i].count+"</td><td>"+data[i].currentPrice+"</td><td>"+data[i].orderStatus+"</td></tr>");
									}
								}
     						}
     	            	);
     	            });
     	        });
                </script>
                <hr>
                <div class="row-fluid">
                	<div id="tableName" class="text-info"></div>
                	<div id="table">
                		<table class="table" id="result_table">
                    		<thead id="thead"></thead>
                            <tbody id="tbody">
                            </tbody>
                        </table>
                	</div>
                      <br>
                </div>
        </div>
     </div>
  </div>
  </div>
  <script type="text/javascript">
      $('#datetimepicker1').datetimepicker({
        format: 'yyyy/MM/dd',
        language: 'en',
        pickDate: true,
		pickTime: false,
        inputMask: true
      });
	  $('#datetimepicker2').datetimepicker({
        format: 'yyyy/MM/dd',
        language: 'en',
        pickDate: true,
		pickTime: false,
        inputMask: true
      });
    </script>
</body>
</html>