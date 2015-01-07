<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Register</title>
	<link href="<%=request.getContextPath()%>/static/css/bootstrap.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/static/css/bootstrap-responsive.css" rel="stylesheet">
	<style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
    <script type="text/javascript">
    	function toBeAdmin(){
    		document.registerForm.action="<%=request.getContextPath()%>/AdminController/register";
    		document.registerForm.submit();
    	}
    	function toLogin(){
    		document.registerForm.action="<%=request.getContextPath()%>/AdminController/";
    		document.registerForm.submit();
    	}
    </script>
</head>
<body>

<div class="container-fluid">
	<div class="span3"></div>
	<div class="span4">
	    <form class="form-horizontal" name="registerForm" method="post">
	    	<div class="control-group">
			    <label class="control-label" for="inputUserName">用户名</label>
				<div class="controls">
				    <input type="text" id="inputUserName" placeholder="UserName" name="username">
			    </div>
		    </div>
	    	<div class="control-group">
			    <label class="control-label" for="inputPassword">密码</label>
				<div class="controls">
				    <input type="password" id="inputPassword" placeholder="Password" name="password">
			    </div>
		    </div>
		    <div class="control-group">
		    	<label class="control-label" for="inputConfirmPassword">重复密码</label>
		   		<div class="controls">
		   			<input type="password" id="inputConfirmPassword" placeholder="ConfirmPassword" name="confirmPassword">
		    	</div>
		    </div>
		     <div class="control-group">
		    	<div class="controls">
		    		<div style="display:block; float:left">
		    			<button type="submit" class="btn" onclick="toBeAdmin()">注册</button>
		    		</div>
		    		<div style="display:block; float:right">
		    			<button type="submit" class="btn" onclick="toLogin()">返回登录</button>
		    		</div>
		    		
		    	</div>
		    </div>
	    </form>
    </div>
</div>
</body>
</html>