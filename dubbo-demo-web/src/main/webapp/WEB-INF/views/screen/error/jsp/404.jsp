<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<%-- 禁用浏览器缓存 --%>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="Cache-Control" content="no-cache, must-revalidate">
	<meta http-equiv="expires" content="Wed, 26 Feb 1997 08:21:57 GMT">
	<meta http-equiv="expires" content="0">
	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>404</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
	<%-- 360浏览器默认以webkit渲染 --%>
	<meta name="renderer" content="webkit">
	<link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath() %>/static/common/images/favicon.ico">
	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/error/css/error.css" />
	
</head>
<body>
	<div class="error-500">
		<p>资源不存在， 喝喝...</p>
 
		<img alt="404" src="<%=request.getContextPath() %>/static/error/images/404.png">
	</div>
</body>
</html>
	