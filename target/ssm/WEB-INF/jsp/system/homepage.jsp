<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>主页</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/system/homepage/homepage.css"/>
	</head>
	
	<body><!--body标签背景设置为透明-->
		<div class="iframe_wrap">
			<div id="menu_wrap">
				<div class="menu_name">
					<span class="name">常用菜单</span>
					<span class="arrow"></span>
				</div>
				<div class="menu_item">
						<ul>
						<li class="one_block">
							<div class="info_wrap">
								<i class="icon fa  fa-window-maximize"></i>
								<a href="#">我的工作台</a>
							</div>
							<div class="count_wrap"><span>63</span></div>
						</li>
						<li class="one_block">
							<div class="info_wrap">
								<span class="fa  fa-window-maximize"></span>
								<a href="#">客户单位管理</a>
							</div>
							<div class="count_wrap"><span>63</span></div>
						</li>
						<li class="one_block">
							<img src="${pageContext.request.contextPath}/css/system/homepage/images/peops.jpg" />
							<a href="#">员工信息管理</a>
							<div class="bg_color3"><span>42</span></div>
						</li>
						<li class="one_block">
							<img src="${pageContext.request.contextPath}/css/system/homepage/images/role.jpg" />
							<a href="#">角色管理</a>
							<div class="bg_color4"><span>40</span></div>
						</li>
						<li class="one_block">
							<img src="${pageContext.request.contextPath}/css/system/homepage/images/organ.jpg" />
							<a href="#">组织管理</a>
							<div class="bg_color5"><span>31</span></div>
						</li>
					</ul>
					<div class="clear"></div>
				</div>
		    </div>
		    
		    <div id="notice_wrap">
		    	<div class="notice_name">
					<!--.bg_color{background:red;width:33%;height: 100%;position: absolute;}-->
					<span class="name">公告</span>
					<span class="arrow"></span>
				</div>
				<div class="notice_item">
					<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<a href="#">合同信息一：合同可以写同名称和到期时间</a>
								<span class="time">2011-3-11 10:59:23</span>
							</td>
							<td><a href="#">合同信息一：合同可以写同名称和到期时间</a>
								<span class="time">2011-3-11 10:59:23</span>
							</td>
							<td><a href="#">合同信息一：合同可以写同名称和到期时间</a>
								<span class="time">2011-3-11 10:59:23</span>
							</td>
							
						</tr>
						<tr>
							<td><a href="#">合同信息一：合同可以写同名称和到期时间</a>
								<span class="time">2011-3-11 10:59:23</span>
							</td>
							<td><a href="#">合同信息一：合同可以写同名称和到期时间</a>
								<span class="time">2011-3-11 10:59:23</span>
							</td>
							<td><a href="#">合同信息一：合同可以写同名称和到期时间</a>
								<span class="time">2011-3-11 10:59:23</span>
							</td>
						</tr>
						<tr>
							<td><a href="#">合同信息一：合同可以写同名称和到期时间</a>
								<span class="time">2011-3-11 10:59:23</span>
							</td>
							<td><a href="#">合同信息一：合同可以写同名称和到期时间</a>
								<span class="time">2011-3-11 10:59:23</span>
							</td>
							<td><a href="#">合同信息一：合同可以写同名称和到期时间</a>
								<span class="time">2011-3-11 10:59:23</span>
							</td>
						</tr>
						<tr>
							<td><a href="#">合同信息一：合同可以写同名称和到期时间</a>
								<span class="time">2011-3-11 10:59:23</span>
							</td>
							<td><a href="#">合同信息一：合同可以写同名称和到期时间</a>
								<span class="time">2011-3-11 10:59:23</span>
							</td>
							<td><a href="#">合同信息一：合同可以写同名称和到期时间</a>
								<span class="time">2011-3-11 10:59:23</span>
							</td>
						</tr>
					</table>
				</div>
		    </div>
		    <div class="dod_wrap">
		    <div class="do_wrap">
		    	<div class="do_item">
		    		<span class="math">580</span>
		    		<div class="clear"></div>
		    		<span class="thing">代办事项</span>
		    		<img src="${pageContext.request.contextPath}/css/system/homepage/images/thing.jpg"/>
		    	</div>
		    	
		    	<div class="look_item">
		    		<a class="check_item">
		    			查看
		    		  <img src="${pageContext.request.contextPath}/css/system/homepage/images/icon.jpg"/>
		    		</a>
		    		
		    	</div> 
		    </div>
		    <div class="download_wrap"> 
		    	<div class="download_item">
		    		<span class="math">17</span>
		    		<div class="clear"></div>
			    	<span class="thing">下载中心</span>
			    	<img src="${pageContext.request.contextPath}/css/system/homepage/images/down.jpg"/>
		    	</div>
			    <div class="dlook_item"> 
			    	<a class="check_item">
			    		查看
			    		<img src="${pageContext.request.contextPath}/css/system/homepage/images/icon2.jpg"/>
			    	</a>
		    		
			    </div>
		    </div>
		    </div>
		    
		   
		</div>
	</body>
</html>
