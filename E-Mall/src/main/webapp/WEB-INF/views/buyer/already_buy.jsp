<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath() %>/static/css/bootstrap.css" rel="stylesheet">
        <link href="<%=request.getContextPath() %>/static/css/bootstrap-responsive.css" rel="stylesheet">
        <style type="text/css">
          body {
            padding-top: 40px;
            padding-bottom: 40px;
			padding-left: 20px;
			padding-right: 40px;
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
	<div class="span1"></div>
		<div style="padding:10px;" class="hero-unit">
			<table class="table">
            	<thead>
                	<tr>
                    	<th>商品</th>
                        <th>订单号</th>
                        <th>成交时间</th>
                        <th>价格</th>
                        <th>数量</th>
                        <th>其他操作</th>
                    </tr>
                </thead>
                <tbody>
                	<tr>
                    	<td>1</td>
                        <td>201401221234567</td>
                        <td>2014.01.15</td>
                        <td>456.00</td>
                        <td>1</td>
                        <td>
                        	<button class="btn btn-mini">删除</button>
                            <button class="btn btn-mini">分享</button>
                        </td>
                    </tr>
                    <tr>
                    	<td>1</td>
                        <td>201401221234567</td>
                        <td>2014.01.15</td>
                        <td>456.00</td>
                        <td>1</td>
                        <td>
                        	<button class="btn btn-mini">删除</button>
                            <button class="btn btn-mini">分享</button>
                        </td>
                    </tr>
                </tbody>
            </table>
		</div>
</body>
</html>