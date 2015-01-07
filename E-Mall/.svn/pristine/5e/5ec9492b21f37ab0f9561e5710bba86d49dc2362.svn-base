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
		<div class="row-fluid">
       		<table class="table">
       			<script>
								$(function(){
									
									$("#modifyPwd").click(function(){
										$.ajax(
												{
													url:"<%=request.getContextPath()%>/SellerController/modifyPwd?id=${seller.sellerID}",
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
									
									$("#updateInfo").click(function(){
										$.ajax(
												{
													url:"<%=request.getContextPath()%>/SellerController/updateInfo?id=${seller.sellerID}",
													type:"post",
													data:{nickName:$("#nickName").val(), sellerNum:$("#sellerNum").val(), birthday:$("#birthday").val(), sellerAddr:$("#sellerAddr").val()},
													success:function (data){
														if(data=="1"){
															alert("修改成功");
														}else if(data=="0"){
															alert("修改失败");
														}
													}
												}
											);
									});
									
								});
				</script>
				<tr>
                	<td>
                    	<img src="<%=request.getContextPath() %>/static/images/tel.jpg" style="width:100px; height:100px;">
                    </td>
                    <td style="text-align:right; vertical-align:middle;">
                    	<button id="info_update" class="btn btn-danger btn-large">个人信息修改</button>
                    </td>
                </tr>
            	<tr>
                	<td>
                    	<img src="<%=request.getContextPath() %>/static/images/lock.jpg" style="width:100px; height:100px;">
                    </td>
                    <td style="text-align:right; vertical-align:middle">
                    	<button id="pwd_modify" class="btn btn-danger btn-large">登录密码修改</button>
                    </td>
                </tr>               
            </table>
        </div>
	<div style="margin:10px 0;"></div>
	
	
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
  <div id="myModal_2" class="modal hide fade">
  
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">资料修改</h3>
        </div>
        
    	<div class="modal-body">
    	
			<form class="form-horizontal">
			
				<div class="control-group">
					<label class="control-label">商家昵称</label>
                	<div class="controls">
                    	<input type="text" id="nickName" placeholder="${seller.sellerName }" name="nickName">
                	</div>
          		</div>
          		<div class="control-group">
					<label class="control-label">联系号码</label>
                	<div class="controls">
                    	<input type="tel" id="sellerNum" placeholder="${seller.telNum }" name="sellerNum" maxlength="11">
                	</div>
          		</div>
          		<div id="dat" class="input-append date control-group">
					<label class="control-label">出生日期</label>
                	<div class="controls" >
                    	<input type="text" id="birthday" placeholder="${seller.birthday }" name="birthday" class="input-medium">
                    	<span class="add-on" onclick="locate()">
        									<i data-time-icon="icon-time" data-date-icon="icon-calendar"></i>
      									</span>
                	</div>
                	
          		</div>
          		
          		<div class="control-group">
					<label class="control-label">联系地址</label>
                	<div class="controls">
                    	<input type="text" id="sellerAddr" placeholder="${seller.localAddr }" name="sellerAddr">
                	</div>
          		</div>
          		
          		<div class="control-group">
                	<div class="controls">
                      <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
                      <button type="button" id="updateInfo" class="btn btn-primary">保存</button>
                	</div>
          		</div>
      		</form>
      		
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

 		 
  <script type="text/javascript">
          var options={
              backdrop:true,
              keyboard:true,
              show:true
          
          }
          $('#pwd_modify').click(function(){
              $('#myModal_1').modal('toggle');
          });
		  $('#info_update').click(function(){
              $('#myModal_2').modal('toggle');
          });
		 		  
          </script>
          
          
   
</body>
</html>