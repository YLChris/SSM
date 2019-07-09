<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/system/role/role.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/common/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/system/role.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/common/jquery.simplePagination.js"></script>
</head>
<body>
		<div id="search_wrap">
			<div class="title_wrap"><span>查询条件</span></div>
			<div class="search_item">
				<div class="id_search">
					<span>角色编号: </span>
					<input type="text" name="id_item" id="id_item"/>
				</div>
				<div class="role_search">
					<span>角色名称：</span>
					<input type="text" name="role_item" id="role_item"/>
					<span class="btn" id="query"><i class="fa fa-search"></i>查询</span>
					<span class="btn" id="add"><i class="fa fa-plus"></i>新增</span>
				</div>
			</div>
		</div>
		<div id="table_wrap">
			<div class="table_head">
				<table id="htable_item" border="1" bordercolor="#C8CCCF" cellspacing="0" >
                    <tr>
                       <th>删除</th>
                       <th>编辑</th>
                       <th>用户</th>
                       <th>赋权</th>
                       <th>角色编号</th>
                       <th>角色名称</th>
                       <th>角色描述</th>
                       <th class="_blank">&nbsp;</th>
                    </tr>
                </table>
			</div>
			<div class="table_body">
				<table id="btable_item" border="1" bordercolor="#C8CCCF" cellspacing="0">
				
	            </table>
			</div>
			<div class="table_bottom">
				<div class="move_icon">
					<span class="circle c1"><i class="fa fa-angle-double-left "></i></span>
					<span class="circle c2"><i class="fa fa-angle-left"></i></span>
					<span class="circle c3" id="pageCount">1</span>
					<span class="circle c4" id="normal"><i class="fa fa-angle-right"></i></span>
					<span class="circle c5"><i class="fa fa-angle-double-right"></i></span>
					<div id="page_wrap">
						<span class="page_item">1</span>
						<span class=" fa  fa-angle-down"></span>
						<span class="branch_item">
							
						</span>
					</div>
				</div>
				<span class="text_page">页/项</span>
				<span class="firstPage">首页</span>
				<span class="lastPage">尾页</span>
				<div class="right_page">
					<span><!-- 第 1 - 5项 共 5 项 --></span>
				</div>
			</div>
		</div>
		<div id="dialog" class="dialog" title="添加角色信息">
			<form class="form_add">
				<div class="legend">角色信息管理</div>
	                                角色名：<br/>
	             <input type="text" class="rolename" /><br/>
	                                 管理权限：<br/>
	             <select class="authority">
	             	<option>超级管理员</option>
	             	<option>管理员</option>
	             	<option>普通用户</option>
	             </select>  
           		 <input type="button" value="确定" class="makesure"/>
           		 <input type="button" value="取消" class="quit"/>
			</form>
		</div>
</body>
</html>