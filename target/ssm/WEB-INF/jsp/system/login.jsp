<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/system/login/login.css"/>
</head>
<body>

<div id="page_wrap">
			<div id="login_wrap">
				<div class="login_item">
					<div class="login_item_pic">
						<span>系统登录</span>
						<form action="index.html" method="post">
							<div class="admin">用户名 &nbsp<input type="text" name="username" value="chenzilong"/><br/></div>
							<div class="pwd">密码&nbsp<input type="password" name="password" value="111111"/><br/></div>
							<div class="key">
								<div class="move"><input type="checkbox" name=""/>记住用户名和密码</div>
							       <a href="#">忘记密码?</a><br/>
							</div>
							<div class="submit"><input type="submit" value="登陆" /></div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- <form action="login.html" method="post">
				用户名：<input type="text" name="username"/>
				密码：<input type="password" name="password"/>
				<input type="submit" value="提交"/>
		</form> -->
</body>
</html>