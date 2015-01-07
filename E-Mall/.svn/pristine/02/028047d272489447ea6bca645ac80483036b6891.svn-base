<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
	<form action="<%=request.getContextPath()%>/SellerController/addGoods" method="post" enctype="multipart/form-data">
		<div class="easyui-panel" title="填写商品基本信息" style="width:900px;height:auto;padding:10px;">
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span2" style="text-align:right;">
		                     	<strong>商品属性：</strong>
		            </div>
		            <div class="span10">
		            	<div class="easyui-panel" style="width:auto;height:auto;padding:10px;background-color:#F2F2F2">
		                   	<div class="row-fluid">
		                   		<div class="span3" style="text-align:right">
		                   		包装方式:
		                   		</div>
		                   		<div class="span9">
		                   			<select class="easyui-combobox" name="pack_style" style="width:200px;">
								<option value="包装">包装</option>
								<option value="散装">散装</option>
									</select>
		                   		</div>
		                   	</div>
		                   	<div class="row-fluid">
		                   		<div class="span3" style="text-align:right">
		                   		上市月份:
		                   		</div>
		                   		<div class="span9">
		                   			<input type="checkbox" name="month" value="一月">&nbsp;一月
		                   			<input type="checkbox" name="month" value="二月">&nbsp;二月
		                   			<input type="checkbox" name="month" value="三月">&nbsp;三月
		                   			<input type="checkbox" name="month" value="四月">&nbsp;四月
		                   			<input type="checkbox" name="month" value="五月">&nbsp;五月
		                   			<input type="checkbox" name="month" value="六月">&nbsp;六月
		                   			<input type="checkbox" name="month" value="七月">&nbsp;七月
		                   			<input type="checkbox" name="month" value="八月">&nbsp;八月
		                   			<input type="checkbox" name="month" value="九月">&nbsp;九月
		                   			<input type="checkbox" name="month" value="十月">&nbsp;十月
		                   			<input type="checkbox" name="month" value="十一月">&nbsp;十一月
		                   			<input type="checkbox" name="month" value="十二月">&nbsp;十二月
		                   		</div>
		                   	</div>
	                   		<br>
	                   		<div class="row-fluid">
	                   			<div class="span3" style="text-align:right">
	                   			产地:
	                   			</div>
	                   			<div class="span9">
	                   				<select class="easyui-combobox" name="origin" style="width:200px;">
										<option value="中国大陆">中国大陆</option>
										<option value="香港">香港</option>
										<option value="美国">美国</option>
										<option value="马来西亚">马来西亚</option>
										<option value="奥地利">奥地利</option>
										<option value="加拿大">加拿大</option>
										<option value="斯里兰卡">斯里兰卡</option>
										<option value="毛里求斯">毛里求斯</option>
									</select>
	                   			</div>
	                   		</div>
	                   		<div class="row-fluid">
	                   			<div class="span3" style="text-align:right">
	                   			是否为有机食品:
	                   			</div>
	                   			<div class="span9">
	                   				<select class="easyui-combobox" name="isOrganic" style="width:200px;">
										<option value="是">是</option>
										<option value="否">否</option>
									</select>
	                   			</div>
	                   		</div>
	                   		<div class="row-fluid">
	                   			<div class="span3" style="text-align:right">
	                   			规格:
	                   			</div>
	                   			<div class="span9">
	                   				<select class="easyui-combobox" name="guige" style="width:200px;">
										<option value="1斤以下">1斤以下</option>
										<option value="10斤以上">10斤以上</option>
										<option value="1-10斤">1-10斤</option>
									</select>
	                   			</div>
	                   		</div>
	                   		<div class="row-fluid">
	                   			<div class="span3" style="text-align:right">
	                   			价格:
	                   			</div>
	                   			<div class="span9">
	                   				<select class="easyui-combobox" name="price" style="width:200px;">
										<option value="300元以上">300元以上</option>
										<option value="51-100元">51-100元</option>
										<option value="201-300元">201-300元</option>
										<option value="0-50元">0-50元</option>
										<option value="101-200元">101-200元</option>
									</select>
	                   			</div>
	                   		</div>
						</div>
		            </div>
				</div>
				<div style="margin:10px 0;"></div>
				<div class="row-fluid">
					<div class="span2" style="text-align: right;"><strong>食品安全:</strong></div>
					<div class="span10">
						<div class="easyui-panel" style="width: auto;height: auto; padding:10px;">
						<div class="row-fluid">
							<div class="span3" style="text-align: right">厂名:</div>
							<div class="span9">
								<input type="text" name="factory">
							</div>
						</div>
						<div class="row-fluid">
							<div class="span3" style="text-align: right">厂址:</div>
							<div class="span9">
								<input type="text" name="factoryAdrr">
							</div>
						</div>
						<div class="row-fluid">
							<div class="span3" style="text-align: right">厂家联系方式:</div>
							<div class="span9">
								<input type="text" name="factoryTel">
							</div>
						</div>
						<div class="row-fluid">
							<div class="span3" style="text-align: right">配料表:</div>
							<div class="span9">
								<input type="text" name="consists">
							</div>
						</div>
						<div class="row-fluid">
							<div class="span3" style="text-align: right">储藏方法:</div>
							<div class="span9">
								<input type="text" name="storeMethod">
							</div>
						</div>
						<div class="row-fluid">
							<div class="span3" style="text-align: right">保质期:</div>
							<div class="span9 input-append">
								<input type="text" name="persistTime">
								<span class="add-on">天</span>
							</div>
						</div>
						<div class="row-fluid">
							<div class="span3" style="text-align: right">添加剂:</div>
							<div class="span9">
								<input type="text" name="extraContain">
							</div>
						</div>
						<div class="row-fluid">
							<div class="span3" style="text-align: right">生产日期:</div>
							<div class="span9">
								<input class="easyui-datebox" name="productDate">
							</div>
						</div>
						</div>
					</div>
				</div>
				<div style="margin:10px 0;"></div>
				<div class="row-fluid">
					<div class="span2" style="text-align:right;"><strong>商品标题:</strong></div>
					<div class="span10">
						<input class="easyui-validatebox " type="text" name="pro_name" data-options="required:true">
					</div>
				</div>
		                 <div style="margin:10px 0;"></div>
				<div class="row-fluid">
					<div class="span2" style="text-align:right;"><strong>一口价:</strong></div>
					<div class="span10 input-append">
						<input class="easyui-validatebox input-large" type="text" name="single_price" data-options="required:true">
		                         <span class="add-on">￥</span>
					</div>
				</div>
		                 <div style="margin:10px 0;"></div>
				<div class="row-fluid">
					<div class="span2" style="text-align:right;"><strong>净含量:</strong></div>
					<div class="span10 input-append">
						<input class="easyui-validatebox input-large" type="text" name="weight" data-options="required:true">
		                         <span class="add-on">g</span>
					</div>
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
					<div class="span2" style="text-align:right;"><strong>卖家昵称:</strong></div>
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
				<div style="margin:10px 0;"></div>
				<div class="row-fluid">
					<div class="span2" style="text-align:right;"><strong>商品描述:</strong></div>
					<div class="span10">
						<div class="easyui-panel" style="width: auto;height:auto;">
							<textarea cols="80" id="editor" name="editor" rows="10"></textarea>
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
									<input type="radio" name="invoice" checked="checked" value="无">&nbsp;无&nbsp;&nbsp;&nbsp;
									<input type="radio" name="invoice" value="有">&nbsp;有&nbsp;&nbsp;&nbsp;
								</div>	
							</div>
							<div class="row-fluid">
								<div class="span3" style="text-align: right">保修:</div>
								<div class="span9">
									<input type="radio" name="guarantee" value="无" checked="checked">&nbsp;无&nbsp;&nbsp;&nbsp;
									<input type="radio" name="guarantee" value="有">&nbsp;有&nbsp;&nbsp;&nbsp;
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