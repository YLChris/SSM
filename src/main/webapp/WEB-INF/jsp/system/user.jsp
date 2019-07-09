<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="utf-8" />
		<title>用户信息管理</title>
		<link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/system/user/style.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/common/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/system/user.js"></script>
	</head>
<body>			
		<div id="bg_wrap">
			<div id="option_wrap">
				<ul>
					<li class="refresh">
							<i class="fa  fa-refresh"></i>
							<span>刷新</span>
					</li>
					<li class="add">
						<i class="fa fa-user-circle "></i>
						<span>添加</span>
					</li>
					<li class="modify">
						<i class="fa fa-pencil-square-o"></i>
						<span>修改</span>
					</li>
					<li class="delete">
						<i class="fa fa-times-circle "></i>
						<span>删除</span>
					</li>
					<li class="set">
						<i class="fa fa-lock"></i>
						<span>设置密码</span>
					</li>
					<li class="export">
						<i class="fa fa-share"></i>
						<span>导出</span>
					</li>
				</ul>
				<div class="search">查询：<input type="text" name="user_search" placeholder="Search UserName" /><input type="button" name="search_sure" value="确认"/></div>
			</div>
			<div id="common_wrap">
				<i class="fa fa-address-card-o"></i>
				<span>系统用户列表</span>
			</div>
			 <div id="data_wrap">
			 	<div class="form_wrap">
			 	 <table id="data_table" class="table_wrap" border="1" bordercolor="#C6C6C6" cellspacing="0">
                     <tr>
                       <th><input type="checkbox" id="checkAll"/></th>
                       <th>编号</th>
                       <th>真实姓名</th>
                       <th>用户名</th>
                       <th>操作</th>
                     </tr>
                 </table>    
                </div>
		     </div>
		</div>
		
		
		<div id="dialog" class="dialog" title="添加用户信息">
			<form class="form_add">
				<div class="legend">用户信息管理</div>
				 用户名：<br/>
				 <input type="text" class="username" /><br/>
	                                 密码：<br/>
	             <input type="password" class="password" /><br/>
           		 <input type="button" value="确定" class="addInfo"/>
           		 <input type="button" value="取消" class="quit"/>
			</form>
		</div>
	</body>
	
	
</html>