<%@page import="ustc.sse.water.utils.GZipUtil"%>
<%@page import="ustc.sse.water.pojo.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>商品详细页面</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Le styles -->
	<link href="<%=request.getContextPath()%>/static/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath()%>static/css/bootstrap-responsive.css" rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath()%>/static/js/google-code-prettify/prettify.css" rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath()%>/static/css/pshow.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
	<script type="text/javascript">
		function pay(){
			document.detailform.action = "#";
			document.detailform.submit();
		}
		
		function addToCart(){
			document.detailform.action="<%=request.getContextPath()%>/addToCart?id=${requestScope.product.productId}";
			document.detailform.submit();
		}
		function showBigImg(imgPath){
		    bigImg.src = imgPath;
		}
	</script>
	<style type="text/css">
		body {
			padding-top: 60px;
			padding-bottom: 40px;
		}
		.sidebar-nav {
			padding: 9px 0;
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
	<div class="container-fluid">
	  <div class="row-fluid">
	    <nav class="span12">
	      <ul class="breadcrumb">
	        <li><a href="#"><font size="+2">食品饮料、保健食品</font></a><span class="divider"></span></li>
	        <li><a href="#">生鲜水果</a><span class="divider">></span></li>
	        <li class="active">80#草莓10斤装21-24粒 山东烟...</li>
	      </ul>
	    </nav>
	  </div>
  <div class="row-fluid">
	    <div class="span5">
	    	<div class="row-fluid">
	    		<div style="border: 1px solid #000">
	    			<img id="bigImg" width="400" height="266" src="${requestScope.product.mainImgUrl}">
	    		</div>
	    	</div>
	    	<div class="row-fluid">
	    		<c:forEach var="img" items="${requestScope.product.images}">
	    			<div class="span2">
	    				<img src="<%=request.getContextPath()%>/${img.imageUrl}" onmousemove="showBigImg('<%=request.getContextPath()%>/${img.imageUrl}')">
	    			</div>
	    		</c:forEach>
	   	</div>
	    </div>
	    <div class="span7" >
    	<ul class="nav nav-tabs">
		     <li class="active"><a href="#instruction" data-toggle="tab" >商品介绍</a></li>
		     <li class=""><a href="#comment" data-toggle="tab" >商品评论 </a></li>
		     <li class=""><a href="#weibo" data-toggle="tab" >微博评论 </a></li>
		     <li class=""><a href="#promise" data-toggle="tab" >商品评论 </a></li>
  		</ul>
  		<div class="tab-content">
  			<div class="tab-pane active" id="instuction">
  				<%=((Product)request.getAttribute("product")).getDescription()%>
  				<%--out.write(description);//GZipUtil.gunzip(description) --%>
  			</div>
  			<div class="tab-pane" id="comment"></div>
  			<div class="tab-pane" id="weibo"></div>
  			<div class="tab-pane" id="promise"></div>
  		</div>
    	</div>
	</div>
  </div>
  <div class="row-fluid" style="margin-top: 40px;">
    <div class="span4 thumbnail" style="width: 250px;margin-left: 65px;">
      <dl>
        <dt>卖&nbsp;&nbsp;家:&nbsp;<font color="#0066FF">寻真水果</font></strong></dt>
        <hr/>
        <dt>综合评分：9.5</dt>
        <hr/>
        <dt>评分明细&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="-1">与行业相比</font></dt>
        <dt>商品评分：9.62</dt>
        <dt>服务评分：9.30</dt>
        <dt>时效评分：9.73</dt>
        <hr/>
        <dt>公司名称：栖霞乐天果品专业合作社</dt>
        <dt>所&nbsp;&nbsp;在&nbsp;&nbsp;地：山东 烟台市</dt>
      </dl>
    </div>
  </div>
  <hr>
  <div class="row-fluid">
    <div class="span3">
      <div align="center">
        <h4>我是新手</h4>
      </div>
      <div align="center"><a href="#">购物流程</a></div>
      <div align="center"><a href="#">常见问题</a></div>
      <div align="center"><a href="#">联系客服</a></div>
    </div>
    <!-- /span -->
    <div class="span3">
      <div align="center">
        <h4>支付方式</h4>
      </div>
      <div align="center"><a href="#">货到付款</a></div>
      <div align="center"><a href="#">支付宝</a></div>
      <div align="center"><a href="#">分期付款</a></div>
      <div align="center"><a href="#">邮局汇款</a></div>
    </div>
    <!-- /span -->
    <div class="span3">
      <div align="center">
        <h4>配送方式</h4>
      </div>
      <div align="center"><a href="#">上门提货</a></div>
      <div align="center"><a href="#">EMS</a></div>
      <div align="center"><a href="#">其他快递</a></div>
    </div>
    <!-- /span -->
    <div class="span3">
      <div align="center">
        <h4>售后服务</h4>
      </div>
      <div align="center"><a href="#">售后政策</a></div>
      <div align="center"><a href="#">退款说明</a></div>
      <div align="center"><a href="#">退换货</a></div>
      <div align="center"><a href="#">取消订单</a></div>
    </div>
  </div>
  <hr>
  <footer>
    <p class="text-center">&copy; J2ee.ustcsz.edu 2013, All Rights Reserved</p>
  </footer>
</div>
<!--/.fluid-container--> 

				<!-- Le javascript
				    ================================================== --> 
				<!-- Placed at the end of the document so the pages load faster --> 
				<script src="<%=request.getContextPath() %>/static/js/jquery.js"></script> 
				<script src="<%=request.getContextPath() %>/static/js/bootstrap-transition.js"></script> 
				<script src="<%=request.getContextPath() %>/static/js/bootstrap-alert.js"></script> 
				<script src="<%=request.getContextPath() %>/static/js/bootstrap-modal.js"></script> 
				<script src="<%=request.getContextPath() %>/static/js/bootstrap-dropdown.js"></script> 
				<script src="<%=request.getContextPath() %>/static/js/bootstrap-scrollspy.js"></script> 
				<script src="<%=request.getContextPath() %>/static/js/bootstrap-tab.js"></script> 
				<script src="<%=request.getContextPath() %>/static/js/bootstrap-tooltip.js"></script> 
				<script src="<%=request.getContextPath() %>/static/js/bootstrap-popover.js"></script> 
				<script src="<%=request.getContextPath() %>/static/js/bootstrap-button.js"></script>
				<script src="<%=request.getContextPath() %>/static/js/bootstrap-collapse.js"></script> 
				<script src="<%=request.getContextPath() %>/static/js/bootstrap-carousel.js"></script> 
				<script src="<%=request.getContextPath() %>/static/js/bootstrap-typeahead.js"></script>
</body>
</html>