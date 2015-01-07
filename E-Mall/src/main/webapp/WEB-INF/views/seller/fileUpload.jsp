<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/static/css/bootstrap3.min.css" rel="stylesheet">
<style type="text/css">
      body {
        padding-top: 60px;
        padding-left: 40px;
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
<title>卖家首页</title>
</head>
<body>
	<form action="#">
		<div class="form-group">
			<label for="InputFile">File input</label>
			<input type="file" id="InputFile">
		</div>
		<button type="submit" class="btn btn-default">Submit</button>
	</form>
</body>
</html>