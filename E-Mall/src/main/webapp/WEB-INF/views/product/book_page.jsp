<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<link type="text/css" href="<%=request.getContextPath()%>/static/css/bootstrap.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/easyui/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/easyui/icon.css">
	<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/static/ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/static/ckfinder/ckfinder.js"></script>
	<script type="text/javascript">

                //图片上传预览    IE是用了滤镜。
        function previewImage(file, divID, imgID)
        {
          var MAXWIDTH  = 100; 
          var MAXHEIGHT = 100;
          var div = document.getElementById(divID);
          if (file.files && file.files[0])
          {
              div.innerHTML ='<img id='+ imgID+ '>';
              var img = document.getElementById(imgID);
              img.onload = function(){
                var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
                img.width  =  rect.width;
                img.height =  rect.height;
//                 img.style.marginLeft = rect.left+'px';
                img.style.marginTop = rect.top+'px';
              }
              var reader = new FileReader();
              reader.onload = function(evt){img.src = evt.target.result;}
              reader.readAsDataURL(file.files[0]);
          }
          else //兼容IE
          {
            var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
            file.select();
            var src = document.selection.createRange().text;
            div.innerHTML = '<img id='+ imgID + '>';
            var img = document.getElementById(imgID);
            img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
            var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
            status =('rect:'+rect.top+','+rect.left+','+rect.width+','+rect.height);
            div.innerHTML = "<div id=divhead style='width:"+rect.width+"px;height:"+rect.height+"px;margin-top:"+rect.top+"px;"+sFilter+src+"\"'></div>";
          }
        }
        function clacImgZoomParam( maxWidth, maxHeight, width, height ){
            var param = {top:0, left:0, width:width, height:height};
            if( width>maxWidth || height>maxHeight )
            {
                rateWidth = width / maxWidth;
                rateHeight = height / maxHeight;
                
                if( rateWidth > rateHeight )
                {
                    param.width =  maxWidth;
                    param.height = Math.round(height / rateWidth);
                }else
                {
                    param.width = Math.round(width / rateHeight);
                    param.height = maxHeight;
                }
            }
            
            param.left = Math.round((maxWidth - param.width) / 2);
            param.top = Math.round((maxHeight - param.height) / 2);
            return param;
        }
        </script>
    <style type="text/css">
          body {
			  margin-left:50px;
			  margin-bottom: 20px;
			  }
        </style>
</head>
<body>
	<div style="margin:10px 0;"></div>
	<form action="<%=request.getContextPath()%>/SellerController/addBookGoods" method="post" enctype="multipart/form-data">
		<div class="easyui-panel" title="填写商品基本信息" style="width:800px;height:auto;padding:10px;">
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span2" style="text-align:right;">
		                     	<strong>商品属性：</strong>
		            </div>
		            <div class="span10">
		            	<div class="easyui-panel" style="width:auto;height:auto;padding:10px;background-color:#F2F2F2">
		                   	<div class="row-fluid">
								<div class="span3" style="text-align: right">书名:</div>
								<div class="span9">
									<input type="text" name="bookName">
								</div>
							</div>
							<div class="row-fluid">
								<div class="span3" style="text-align: right">ISBN编号:</div>
								<div class="span9">
									<input type="text" name="ISBN">
								</div>
							</div>
							<div class="row-fluid">
								<div class="span3" style="text-align: right">定价:</div>
								<div class="span9">
									<input type="text" name="fixedPrice">
								</div>
							</div>
		                   	<div class="row-fluid">
		                   		<div class="span3" style="text-align:right">
		                   		是否是套装:
		                   		</div>
		                   		<div class="span9">
		                   			<select class="easyui-combobox" name="pack_style" style="width:200px;">
								<option value="Y">是</option>
								<option value="N">否</option>
									</select>
		                   		</div>
		                   	</div>
		    				<div class="row-fluid">
								<div class="span3" style="text-align: right">出版社名称:</div>
								<div class="span9">
									<input type="text" name="publisher">
								</div>
							</div>
							<div class="row-fluid">
								<div class="span3" style="text-align: right">出版时间:</div>
								<div class="span9">
									<input type="text" name="publishTime">
								</div>
							</div>
							<div class="row-fluid">
								<div class="span3" style="text-align: right">作者:</div>
								<div class="span9">
									<input type="text" name="author">
								</div>
							</div>
	                   		
	                   		<div class="row-fluid">
	                   			<div class="span3" style="text-align:right">
	                   			作者地区:
	                   			</div>
	                   			<div class="span9">
	                   				<select class="easyui-combobox" name="authorRegion" style="width:200px;">
										<option value="Zh">中国大陆</option>
										<option value="Hongkong">香港</option>
										<option value="Taiwan">台湾</option>
										<option value="Japan">日本</option>
										<option value="Korea">韩国</option>
										<option value="France">法国</option>
										<option value="American">美国</option>
										<option value="Britain">英国</option>
										<option value="Germany">德国</option>
										<option value="Russian">俄罗斯</option>
										<option value="Russian">其他</option>
									</select>
	                   			</div>
	                   		</div>
	                   		<div class="row-fluid">
								<div class="span3" style="text-align: right">译者:</div>
								<div class="span9">
									<input type="text" name="translator">
								</div>
							</div>
	                   		<div class="row-fluid">
								<div class="span3" style="text-align: right">编者:</div>
								<div class="span9">
									<input type="text" name="editor">
								</div>
							</div>
							<div class="row-fluid">
								<div class="span3" style="text-align: right">开本:</div>
								<div class="span9">
									<input type="text" name="format">
								</div>
							</div>
							<div class="row-fluid">
								<div class="span3" style="text-align: right">印刷时间:</div>
								<div class="span9">
									<input type="text" name="printTime">
								</div>
							</div>
							<div class="row-fluid">
								<div class="span3" style="text-align: right">页数:</div>
								<div class="span9">
									<input type="text" name="pages">
								</div>
							</div>
							<div class="row-fluid">
								<div class="span3" style="text-align: right">字数:</div>
								<div class="span9">
									<input type="text" name="wordCount">
								</div>
							</div>
						</div>
		            </div>
				</div>
				<!-- 
				<div class="row-fluid">
					<div class="span2" style="text-align:right;">
		                     	<strong>商品标签：</strong>
		            </div>
		            <div class="span10">
		            	<div class="easyui-panel" style="width:auto;height:auto;padding:10px;background-color:#F2F2F2">
		                   	<div class="row-fluid">
		                   		<div class="span3" style="text-align: right">标签1：</div>
								<div class="span9">
									<input type="text" name="flag1">
								</div>
							</div>
							<div class="row-fluid">
								<div class="span3" style="text-align: right">标签2：</div>
								<div class="span9">
									<input type="text" name="flag2">
								</div>
							</div>
							<div class="row-fluid">
								<div class="span3" style="text-align: right">标签3：</div>
								<div class="span9">
									<input type="text" name="flag3">
								</div>
							</div>
							<div class="row-fluid">
								<div class="span3" style="text-align: right">标签4：</div>
								<div class="span9">
									<input type="text" name="flag4">
								</div>
							</div>
						</div>
					</div>
				</div>
				 -->
				<div style="margin:10px 0;"></div>
				<div class="row-fluid">
					<div class="span2" style="text-align:right;"><strong>商品标题:</strong></div>
					<div class="span10">
						<input class="easyui-validatebox " type="text" name="pro_name" data-options="required:true">
					</div>
				</div>
		                 <div style="margin:10px 0;"></div>
				<!-- <div class="row-fluid">
					<div class="span2" style="text-align:right;"><strong>一口价:</strong></div>
					<div class="span10 input-append">
						<input class="easyui-validatebox input-large" type="text" name="single_price" data-options="required:true">
		                         <span class="add-on">￥</span>
					</div>
				-->
				</div>
				<div style="margin:10px 0;"></div>
				<div class="row-fluid">
					<div class="span2" style="text-align:right;"><strong>数量:</strong></div>
					<div class="span10 input-append">
						<input class="easyui-validatebox input-large" type="text" name="pro_count" data-options="required:true">
		                         <span class="add-on">件</span>
					</div>
				</div>
				<div style="margin:10px 0;"></div>
				<div class="row-fluid">
					<div class="span2" style="text-align:right;"><strong>商家昵称:</strong></div>
					<div class="span10 input-append">
						<input class="easyui-validatebox" type="text" name="sellerName" data-options="required:true">
					</div>
				</div>
				<div style="margin:10px 0;"></div>
				<div class="row-fluid">
					<div class="span2" style="text-align:right;"><strong>商品图片:</strong></div>
					<div class="span10">
						<div class="easyui-tabs" style="width:auto;height:auto">
							<div title="本地上传" style="padding:10px;">
							<div>选择本地图片：</div>
									<div class="row-fluid">
										<div class="span4">
											<div id="preview">
												<img id="imghead" width=100 height=100 border=0 src='<%=request.getContextPath()%>/static/images/default.png'>
											</div>
											主图:<input type="file" name="mainImg" onchange="previewImage(this, 'preview', 'imghead')">
										</div>
										<div class="span4">
											<div id="preview2">
												<img id="imghead2" width=100 height=100 border=0 src='<%=request.getContextPath()%>/static/images/default.png'>
											</div>
											左图<input type="file" name="leftImg"  onchange="previewImage(this, 'preview2', 'imghead2')">
										</div>
										<div class="span4">
											<div id="preview3">
												<img id="imghead3" width=100 height=100 border=0 src='<%=request.getContextPath()%>/static/images/default.png'>
											</div>
											右图<input type="file" name="rightImg"  onchange="previewImage(this, 'preview3', 'imghead3')">
										</div>
									</div>
									<div class="row-fluid">
										<div class="span4">
											<div id="preview4">
												<img id="imghead4" width=100 height=100 border=0 src='<%=request.getContextPath()%>/static/images/default.png'>
											</div>
											前图<input type="file" name="frontImg"  onchange="previewImage(this, 'preview4', 'imghead4')">
										</div>
										<div class="span4">
											<div id="preview5">
												<img id="imghead5" width=100 height=100 border=0 src='<%=request.getContextPath()%>/static/images/default.png'>
											</div>
											后图<input type="file" name="backImg"  onchange="previewImage(this, 'preview5', 'imghead5')">
										</div>
									</div>
									
									<div class="row-fluid">
										<div class="span4 text-right">提示：</div>
										<div class="span8">
											<div>
												<p class="">本地图片不能超过500K</p>
											</div>
											<div>
												<p class="">最多上传5张</p>
											</div>
										</div>
									</div>
							</div>
							<div title="图片空间" style="padding:10px;">
							</div>
						</div>
					</div>
				</div>
				<div class="row-fluid">
					<div class="span2" style="text-align:right;"><strong>商品描述:</strong></div>
					<div class="span10">
						<div class="easyui-panel" style="width: auto;height:auto;">
							<textarea cols="80" id="editor" name="description" rows="10"></textarea>
						</div>
					</div>
				</div>
				<div style="margin:10px 0;"></div>
				<div class="row-fluid">
					<div class="span2" style="text-align:right;"><strong>售后保障信息:</strong></div>
					<div class="span10">
						<div class="easyui-panel" style="width: auto;height:auto; padding:10px;">
							<div class="row-fluid">
								<div class="span3" style="text-align: right">发票:</div>
								<div class="span9">
									<input type="radio" name="invoice" checked="checked">&nbsp;无&nbsp;&nbsp;&nbsp;
									<input type="radio" name="invoice">&nbsp;有&nbsp;&nbsp;&nbsp;
								</div>	
							</div>
							<div class="row-fluid">
								<div class="span3" style="text-align: right">保修:</div>
								<div class="span9">
									<input type="radio" name="guarantee" checked="checked">&nbsp;无&nbsp;&nbsp;&nbsp;
									<input type="radio" name="guarantee">&nbsp;有&nbsp;&nbsp;&nbsp;
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row-fluid text-center" style="margin-top: 60px;">
					<input type="submit" class="btn btn-danger" width="200px" value="提交"/>
				</div>
			</div>
		</div>
	</form>
</body>

<script type="text/javascript">
	var editor = CKEDITOR.replace( 'editor' );
	editor.setData( '<p class="text-info">（开始编辑）</p>' );
	CKFinder.setupCKEditor( editor, '/ckfinder/' ) ;
	</script>
</html>