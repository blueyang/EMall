<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta content="text/html; charset=UTF-8" />
		<title>Welcome</title>
	</head>
	<frameset rows="10%, 90%">
		<frame src="<%=request.getContextPath()%>/SMgrLoader/loadHead" noresize="noresize" frameborder="no" scrolling="no"/>
		<frameset cols="225,*">
			<frame src="<%=request.getContextPath() %>/SMgrLoader/loadLeft" noresize="noresize" frameborder="no" scrolling="0" />
	  		<frame src="<%=request.getContextPath() %>/SMgrLoader/loadCenter" name="right" frameborder="no" />
		</frameset><noframes></noframes>
	</frameset>
</html>