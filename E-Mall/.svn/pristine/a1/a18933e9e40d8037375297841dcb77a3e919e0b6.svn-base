<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<head>
<meta>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<link href="<%=request.getContextPath()%>/static/css/bootstrap.css"
	rel="stylesheet">
<style type="text/css">
body {
	padding-top: 40px;
	padding-bottom: 40px;
	background-color: #f5f5f5;
}

.form-signin {
	max-width: 300px;
	padding: 19px 29px 29px;
	margin: 0 auto 20px;
	background-color: #fff;
	border: 1px solid #e5e5e5;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.form-signin .form-signin-heading,.form-signin .checkbox {
	margin-bottom: 10px;
}

.form-signin input[type="text"],.form-signin input[type="password"] {
	font-size: 16px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px 9px;
}
</style>
<link
	href="<%=request.getContextPath()%>/static/css/bootstrap-responsive.css"
	rel="stylesheet">

<script type="text/javascript">
	function adminLogin(){
		document.loginform.action="<%=request.getContextPath()%>/AdminController/login";
		document.loginform.submit();
	}
		
</script>

</head>
<!--  col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 col-xs-12-->
<body>
	<div id="js-wall-info" class="">
		<h1 class="text-center">酱油网后台管理系统</h1><br/><br/><br/>
			<div class="container">
				<form class="form-signin" name="loginform" method="post">
					<h2 class="form-signin-heading">请登录</h2>
					<input type="text" id="nameInput" class="input-block-level"
						placeholder="UserName" name="username">
					<div id="d" style="display: none; background: #999900;"></div>
					<input type="password" class="input-block-level"
						placeholder="Password" name="password"> <label
						class="checkbox"> <input type="checkbox"
						value="remember-me"> Remember me
					</label>
					<button class="btn btn-primary" onclick="adminLogin();">Login</button>
				</form>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		var name = document.getElementById("nameInput");
		function nameCheck(){
			d.style.dispay = 'block';
			if(name.value.match(/^\w+/)){
				d.innerHTML = "dui";
			} else {
				d.innerHTML = "cuo";
			}
		}
	</script>
	<!-- Le javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="/static/js/jquery.js"></script>
	<script src="/static/js/bootstrap-transition.js"></script>
	<script src="/static/js/bootstrap-alert.js"></script>
	<script src="/static/js/bootstrap-modal.js"></script>
	<script src="/static/js/bootstrap-dropdown.js"></script>
	<script src="/static/js/bootstrap-scrollspy.js"></script>
	<script src="/static/js/bootstrap-tab.js"></script>
	<script src="/static/js/bootstrap-popover.js"></script>
	<script src="/static/js/bootstrap-tooltip.js"></script>
	<script src="/static/js/bootstrap-button.js"></script>
	<script src="/static/js/bootstrap-collapse.js"></script>
	<script src="/static/js/bootstrap-carousel.js"></script>
	<script src="/static/js/bootstrap-typeahead.js"></script>
</body>
</html>