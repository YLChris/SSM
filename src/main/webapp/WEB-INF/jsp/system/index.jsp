<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>首页</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/system/index/index.css" />
<link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/common/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/system/index.js"></script>
</head>
<body onselectstart="return false"><!--oncontextmenu="return false;" 禁止右键单击  后面一句是禁止复制-->
	<div id="pageWrap">
		<div id="left">
			<div class="logo_wrap">
				<div class="logo"></div>
			</div>
			<div class="menu_wrap">
				<ul>
					<li class="menu_item">
						<div class="text_wrap">
							<span class="${sessionScope.icon_name0}"></span> <span>${sessionScope.moduleEntity0}</span>
							<a href="#"><span class="arrow fa fa-hand-o-right"></span></a>	
						</div>		
						<div class="children_wrap"></div>				
					</li>
					<li class="menu_item">
						<div class="text_wrap">
							<span class="${sessionScope.icon_name1}"></span> <span>${sessionScope.moduleEntity1}
							</span> <a href="#"><span class="arrow fa fa-hand-o-right"></span></a>
						</div>
						<div class="children_wrap"></div>
					</li>
					<li class="menu_item">
						<div class="text_wrap">
							<span class="${sessionScope.icon_name2 }"></span> <span>${sessionScope.moduleEntity2}</span>
							<a href="#"><span class="arrow fa fa-hand-o-right"></span></a>
						</div>
						<div class="children_wrap"></div>
					</li>
					<li class="menu_item" id="main">
						<div class="text_wrap">
							<span class="${sessionScope.icon_name3} "></span> <span>${sessionScope.moduleEntity3}</span>
							<a href="#"><span class="arrow fa fa-hand-o-right"></span></a>
						</div>
						<div class="children_wrap"></div>
					</li>
					<li class="menu_item">
						<div class="text_wrap">
							<span class="${sessionScope.icon_name4} "></span>
							 <span>${sessionScope.moduleEntity4}</span>
							<a href="#"><span class="arrow fa fa-hand-o-right"></span></a>							
						</div>
						<div class="children_wrap"></div>
					</li>
					<li class="menu_item">
						<div class="text_wrap">
							<span class="${sessionScope.icon_name5}"></span>
							 <span class="xitong">${sessionScope.moduleEntity5}</span>
							  <a href="#"><span class="arrow fa fa-hand-o-right"></span></a>							
						</div>
						<div class="children_wrap">
							<ul>
								<li class="${sessionScope.icon_name6}" id="organManage">${sessionScope.moduleEntity6}</li>
								<li class="${sessionScope.icon_name6}" id="userManage">${sessionScope.moduleEntity7}</li>
								<li class="${sessionScope.icon_name6}" id="roleManage">${sessionScope.moduleEntity8}</li>
								<li class="${sessionScope.icon_name6}" id="downlManage">${sessionScope.moduleEntity9}</li>
								<li class="${sessionScope.icon_name6}" id="tipManage">${sessionScope.moduleEntity10}</li>
								<li class="${sessionScope.icon_name6}" id="MessageManage">${sessionScope.moduleEntity11}</li>
								<li class="${sessionScope.icon_name6}" id="dictionaryManage">${sessionScope.moduleEntity12}</li>
							</ul>
						</div>
					</li>
				</ul>
			</div>

		</div>
		<div id="right">
			<div class="top_wrap">
				<div class="login_info">
					<a href="#">admin-超级管理员</a> <a href="#">更改密码</a> <a href="#"
						class="nobd">注销</a>
				</div>
				<a href="#" class="arrow"></a>
			</div>
			<div class="nav_wrap">
				<ul>
					<li class="nav_item">首页</li>
				</ul>
				<ul>
					<li class="nav_item active">首页2</li>
				</ul>
			</div>

			<div class="bg_wrap">
				<div class="iframe_wrap">
					<iframe src="homepage.html" width="100%" height="100%" id="iframe_id" name="iframe_name"
						allowtransparency="no" frameborder="no"></iframe>
				</div>
			</div>
			<div class="bottom_wrap">
				<div class="character">CopyRight @ 2016龙艺.All Right reserved</div>
			</div>
		</div>
	</div>
</body>
</html>
