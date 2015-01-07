<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        
        <script language="JavaScript"> 
        function test(){ 
        	var f = document.pswForm; 
        	var oldPsw = f.oldpassword.value; 
        	var newPsw1 = f.newpassword1.value; 
        	var newPsw2 = f.newpassword2.value; 
        	if(oldPsw =="" || newPsw1 == "" || newPsw2 == ""){ 
        	alert("密码框不能为空!"); 
        	return false; 
        	} 
        	if(newPsw1 != newPsw2){ 
        	alert("两次密码输入不一致!"); 
        	return false; 
        	} 
        	return true; 
        	} 
 
</script> 	
</head>
<body>

	<div class="container-fluid hero-unit">
	
    	<div class="row-fluid">
        	<div class="span3">
            	<img src="<%=request.getContextPath() %>/static/images/123.jpg" style="width:150px; height:150px;">
            </div>
            <div class="span9">
            	<div class="row-fluid">
            		<div class="text-left">飞奔的蜗牛</div>
                </div>
                <br><br>
                <div class="row-fluid">
                	<div class="span2">
                    	安全指数：
                    </div>
                    <div class="span10">
                        <div class="progress progress-striped progress-warning" style="width:45%">
                            <div class="bar" style="width: 50%;">50%</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr>
        <div class="row-fluid">
       		<table class="table">
       		<script>
								$(function(){
									
									$("#modifyPwd").click(function(){
										$.ajax(
												{
													url:"<%=request.getContextPath()%>/BuyerController/password_update",
													type:"post",
													data:{oldPwd:$("#old_pass").val(), newPwd:$("#new_pass").val(), confirmPwd:$("#confirm").val()},
													success:function (data){
														if(data=="1"){
															alert("修改成功");
														}else if(data=="2"){
															alert("原始密码错误");
														}else {
															alert("修改发生错误");
														}
														
													}
												}
											);
									});
									
									$("#modifyPwd").click(function(){
										$.ajax(
												{
													url:"<%=request.getContextPath()%>/BuyerController/password_update",
													type:"post",
													data:{oldPwd:$("#old_pass").val(), newPwd:$("#new_pass").val(), confirmPwd:$("#confirm").val()},
													success:function (data){
														if(data=="1"){
															alert("修改成功");
														}else if(data=="2"){
															alert("原始密码错误");
														}else {
															alert("修改发生错误");
														}
														
													}
												}
											);
									});
									
									$("#modifyPwd").click(function(){
										$.ajax(
												{
													url:"<%=request.getContextPath()%>/BuyerController/password_update",
													type:"post",
													data:{oldPwd:$("#old_pass").val(), newPwd:$("#new_pass").val(), confirmPwd:$("#confirm").val()},
													success:function (data){
														if(data=="1"){
															alert("修改成功");
														}else if(data=="2"){
															alert("原始密码错误");
														}else {
															alert("修改发生错误");
														}
														
													}
												}
											);
									});
									
																
								});
				</script>
            	<tr>
                	<td>
                    	<img src="<%=request.getContextPath() %>/static/images/lock.jpg" style="width:100px; height:100px;">
                    </td>
                    <td style="text-align:right; vertical-align:middle">
                    	<button id="pwd_modify" class="btn btn-danger btn-large">立即修改</button>
                    </td>
                </tr>
                <!-- <tr>
                	<td>
                    	<img src="<%=request.getContextPath() %>/static/images/mailbox.jpg" style="width:100px; height:100px;">
                    </td>
                    <td style="text-align:right; vertical-align:middle;">
                    	<button id="mail_bound" class="btn btn-danger btn-large">立即绑定</button>
                    </td>
                </tr>
                <tr>
                	<td>
                    	<img src="<%=request.getContextPath() %>/static/images/tel.jpg" style="width:100px; height:100px;">
                    </td>
                    <td style="text-align:right; vertical-align:middle;">
                    	<button id="tel_bound" class="btn btn-danger btn-large">立即绑定</button>
                    </td>
                </tr> -->
            </table>
        </div>
    </div>
        
    <div id="myModal_1" class="modal hide fade">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">修改密码</h3>
        </div>
    	<div class="modal-body">
			<form class="form-horizontal" name="pswForm">
				<div class="control-group">
					<label class="control-label" for="old_pass">原密码</label>
                	<div class="controls">
                    	<input type="password" id="old_pass" placeholder="原密码" name="oldpassword">
                	</div>
          		</div>
          		<div class="control-group">
             		<label class="control-label" for="new_pass">新密码</label>
                	<div class="controls">
                    	<input type="password" id="new_pass" placeholder="新密码" name="newpassword1">
                	</div>
          		</div>
          		<div class="control-group">
             		<label class="control-label" for="confirm">确认密码</label>
                	<div class="controls">
                    	<input type="password" id="confirm" placeholder="确认密码" name="newpassword2">
                	</div>
          		</div>
          <div class="control-group">
                  <div class="controls">
                      <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
                      <button type="button" id="modifyPwd" class="btn btn-primary" onclick="return test()">保存</button>
                  </div>
          </div>
      </form>
    </div>
  </div>
  </form>
  
    <div id="myModal_2" class="modal hide fade">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">绑定邮箱</h3>
        </div>
    	<div class="modal-body">
			<form class="form-horizontal">
				<div class="control-group">
					<label class="control-label" for="mail">邮箱</label>
                	<div class="controls">
                    	<input type="email" id="mail" placeholder="mail">
                	</div>
          		</div>
          		<div class="control-group">
                	<div class="controls">
                      <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
                      <button type="button" id="" class="btn btn-primary">保存</button>
                	</div>
          		</div>
      		</form>
    	</div>
 	</div>

	<div id="myModal_3" class="modal hide fade">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">绑定手机</h3>
        </div>
    	<div class="modal-body">
			<form class="form-horizontal">
				<div class="control-group">
					<label class="control-label" for="tel">手机号</label>
                	<div class="controls">
                    	<input type="tel" id="tel" placeholder="tel">
                	</div>
          		</div>
          		<div class="control-group">
                	<div class="controls">
                      <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
                      <button type="submit" id="" class="btn btn-primary">保存</button>
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
          $('#pwd_modify').click(function(){
              $('#myModal_1').modal('toggle');
          });
		  $('#mail_bound').click(function(){
              $('#myModal_2').modal('toggle');
          });
		  $('#tel_bound').click(function(){
              $('#myModal_3').modal('toggle');
          });		  
          </script>
</body>
</html>