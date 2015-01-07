<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath() %>/static/css/bootstrap.css" rel="stylesheet">
<script src="<%=request.getContextPath() %>/static/js/jquery.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/static/js/bootstrap.js"  type="text/javascript"></script>
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
</head>
<body>
	<div class="container-fluid hero-unit">
    	<div class="row-fluid">
        	<div class="span2 text-left">我的地址</div>
            <div class="span10" style="text-align:right">
            	<button id="newAddr" class="btn btn-success">添加新地址</button>
            </div>
        </div>
        <hr>
        <div class="row-fluid">
        	<c:if test="${empty requestScope.addrs}">
        		<div class="hero-unit well">
        			<h1>没有地址信息</h1>
        		</div>
        	</c:if>
        	<c:if test="${!empty requestScope.addrs}">
        		<table class="table">
	            	<thead>
	                	<tr>
	                    	<th>收货人</th>
	                        <th>所在地区</th>
	                        <th>街道</th>
	                        <th>邮编</th>
	                        <th>其他信息</th>
	                        <th>电话</th>
	                        <th></th>
	                        <th>操作</th>
	                    </tr>
	                </thead>
	                <tbody>
	                	<c:forEach var="addr" items="${requestScope.addrs}">
	                		<tr>
		                    	<td>${addr.receiveName}</td>
		                        <td>${addr.area}</td>
		                        <td>${addr.street}</td>
		                        <td>${addr.postcode}</td>
		                        <td>${addr.blanket}</td>
		                        <td>${addr.telNumber}</td>
		                        <td class="inline">
		                        	<c:if test="${addr.flag==1}">
		                        		默认地址
		                        	</c:if>
		                        </td>
		                        <td>
		                        	<button class="btn btn-mini">删除</button>
		                        	<c:if test="${addr.flag == 0}">
		                        		<button class="btn btn-mini">设置默认</button>
		                        	</c:if>
		                        </td>
		                    </tr>
	                	</c:forEach>
	                </tbody>
	            </table>
        	</c:if>
        </div>
   </div>
   
     <div id="myModal" class="modal hide fade">
           <div class="modal-header">
          	  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
      	   	  <h3 id="myModalLabel">添加新地址</h3>
    	</div>
    <div class="modal-body">
      <form class="form-horizontal" action="<%=request.getContextPath()%>/BuyerController/addAddr" method="post">
          <div class="control-group">
              <label class="control-label">收件人</label>
                  <div class="controls">
                      <input type="text" id="receiveName" placeholder="收件人" name="receiveName">
                  </div>
          </div>
          <div class="control-group">
              <label class="control-label" for="state">所在地区</label>
                  <div class="controls">
                      <input type="text" id="state" placeholder="所在地区" name="state">
                  </div>
          </div>
          <div class="control-group">
              <label class="control-label" for="road">街道</label>
                  <div class="controls">
                      <input type="text" id="road" placeholder="街道" name="road">
                  </div>
          </div>
          <div class="control-group">
              <label class="control-label" for="postCode">邮编</label>
                  <div class="controls">
                      <input type="text" id="postCode" placeholder="邮编" name="postCode">
                  </div>
          </div>
          <div class="control-group">
              <label class="control-label" for="blanket">其他</label>
                  <div class="controls">
                      <input type="text" id="blanket" placeholder="其他信息" name="blanket">
                  </div>
          </div>
          <div class="control-group">
              <label class="control-label" for="tel">电话</label>
                  <div class="controls">
                      <input type="text" id="tel" placeholder="电话" name="tel">
                  </div>
          </div>
          <div class="control-group">
                  <div class="controls">
                      <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
                      <button type="submit" class="btn btn-primary">保存</button>
                  </div>
          </div>
      </form>
    </div>
  </div>
  
          <script type="text/javascript">
          var options={
              backdrop:true,
              keyboard:true,
              show:true
          
          }
          $('#newAddr').click(function(){
              $('#myModal').modal('toggle');
          });
          </script>
</body>
</html>