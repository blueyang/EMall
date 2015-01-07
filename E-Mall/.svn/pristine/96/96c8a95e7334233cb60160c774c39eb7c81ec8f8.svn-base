<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
     href="http://tarruda.github.com/bootstrap-datetimepicker/assets/css/bootstrap-datetimepicker.min.css">
<link href="<%=request.getContextPath() %>/static/css/bootstrap.css" rel="stylesheet">
 	<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery.js"></script> 
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrap-datetimepicker.min.js"></script>
	<link type="text/css" href="<%=request.getContextPath()%>/static/css/bootstrap.css" rel="stylesheet">

	<style type="text/css">
          body {
			  margin-left:50px;
			  margin-bottom: 20px;
			  }
        </style>
</head>
<body>
	<div style="margin:10px 0;"></div>
	<form action="<%=request.getContextPath()%>/BuyerController/updateInfo" method="post" enctype="multipart/form-data">
		<div class="easyui-panel" title="编辑个人信息" style="width:800px;height:auto;padding:10px">
			<div class="container-fluid hero-unit">
				<div class="container-fluid">
					<div class="row-fluid">
						<div class="span10">
							<div class="row-fluid">
								<div class="span3" style="text-align: right">用户昵称:</div>
								<div class="span9">
									<input type="text" name="username">
								</div>
							</div>
							<div class="row-fluid">
								<div class="span3" style="text-align: right">邮箱:</div>
								<div class="span9">
									<input type="text" name="usermail">
								</div>
							</div>
							<div class="row-fluid">
								<div class="span3" style="text-align: right">真实姓名:</div>
								<div class="span9">
									<input type="text" name="truename">
								</div>
							</div>
							 <div class="row-fluid">
						    	<div class="span3">
						    		<p class="text-right">性别:</p>
						        </div>
						        <div class="span9">
									<label class="radio inline">
						            	<input type="radio" name="sex" id="radio1" value="m" checked>
						                男
						            </label>
						            <label class="radio inline">
						            	<input type="radio" name="sex" id="radio2" value="f">
						                女
						            </label>
						        </div>
						    </div>
						    <div id="dat" class="row-fluid ">						    	
									<div class="span3" style="text-align: right">生日:</div>
									<div class="span9 input-append date">
										<input type="text" id="birthday" name="birthday" class="input-medium">
			                    		<span class="add-on">
			        									<i data-time-icon="icon-time" data-date-icon="icon-calendar"></i>
			      									</span>
									</div>								
							</div>
							<div class="row-fluid">
								<div class="span3" style="text-align: right">电话:</div>
								<div class="span9">
									<input type="text" name="tel" maxlength="11">
								</div>
							</div>
							
          					<script type="text/javascript">
						      $('#dat').datetimepicker({
						        format: 'yyyy-MM-dd',
						        language: 'en',
						        pickDate: true,
								pickTime: false,
						        inputMask: true
						        
						      });
						    </script>
							
						</div>
			       </div>
			       <div class="row-fluid text-center" style="margin-top: 60px;">
						<input type="submit" class="btn btn-danger" width="200px" value="提交"/>
					</div>
			 	</div>
			 </div>
		 </div>
	</form>
</body>
</html>