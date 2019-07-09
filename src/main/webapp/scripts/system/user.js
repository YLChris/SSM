var user_id;
$(function() {
	refreshTable();
	refresh();// 刷新页面
	Allchecked();//实现全选
	$(".add").click(function() {//添加
		user_id = undefined;
		$('#dialog').show();
		$(".username").val('');
		$(".password").val('');
	});
	$(".addInfo").click(function() {//添加或修改按钮
		$.ajax({
			url : 'user/insertOrUpdateUser.html',
			type : 'post',
			data : {
				user_id : user_id,
				username : $(".username").val(),
				password : $(".password").val()
			},
			success : function(rst) {
				$('#dialog').hide();
				refreshTable();
			}});
	});
	
	
	$('.quit').click(function() {//取消按钮
		$("#dialog").hide();
	});
	$("input[name='search_sure']").click(function(){//查询按钮
		$user_search=$("input[name='user_search']").val();
		$.ajax({
			url : 'user/searchUser.html',
			type : 'POST',
			dataType : 'json',
			data:{
					username:$user_search
			},
			success : function(rst) {
				if(rst!=""){
					loadData(rst);	
				}else{
					alert('用户名为：'+$user_search+'的用户不存在');
				}		
			}
		});
	});
	
	$('li.delete').click(function(){//批量删除
		var ids = '';
		$("input[name='checked']:checked").each(function() { // 遍历选中的checkbox
			ids += $(this).attr('user_id')+',';
		});
		if(!ids){
			alert('请选择删除的数据');
			return;
		}
		var r = confirm('确认删除?');
	
		if(r){
			
			ids = ids.substring(0,ids.length-1);
			$.ajax({
				url : 'user/delUser.html',
				type : 'post',
				data : {
					user_id :ids,
				},
				success : function(rst) {
					alert(rst > 0 ? '删除成功('+rst+')!' : '删除失败!');
					refreshTable();
				}
			});
		}
		
	});
});
function Allchecked(){
	$("input#checkAll").click(function() {
		$("input[name='checked']").prop("checked",$(this).prop("checked"));
	});
	//给当前文档的checkbox添加点击事件和回调函数
	$(document).on("click","input[name='checked']",function(){
		var chks = $("input[name='checked']");
		
		var flag = true;
		chks.each(function(i,n){
			var $chk = $(n);
			if(!$chk.is(':checked')){
				flag = false;
				return false;
			}
		});
		$("input#checkAll").prop("checked",flag);
	});
}
function refreshTable() {
	$.ajax({
		url : 'user/listUser.html',
		type : 'POST',
		dataType : 'json',
		success : function(rst) {
			console.log(rst);
			loadData(rst);
		}
	});
}

function loadData(data) {//从数据库中传来的数据
	var $table = $('#data_table');
	$table.find('tr:not(:first)').remove();
	$.each(data, function(i, n) {
		$table.append('<tr><td><input type="checkbox" user_id="' + n.user_id+ '" name="checked" /></td><td>' + n.user_id
				+ '</td><td>' + n.realname + '</td><td>' + n.username
				+ '</td><td><input user_id=' + n.user_id
				+ ' type="button" class="delData" value="删除"/>'
				+ '<input user_id=' + n.user_id +' username='+n.username+' password='+n.password
				+ ' type="button" class="modifyData" value="修改"/></td></tr>');
	});
	deleteData();
	modify();
}
function refresh() {
	$(".refresh").click(function() {
		alert('正在刷新页面...');
		refreshTable();
	});
}
function deleteData(){
	$(".delData").click(function() {// 删除操作
		var $this = $(this);
		var r = confirm("确认删除编号为" + $this.attr('user_id') + "的用户信息?");
		if (r) {
			$.ajax({
				url : 'user/delUser.html',
				type : 'post',
				data : {
					user_id : $this.attr('user_id')
				},
				success : function(rst) {
					alert(rst > 0 ? '删除成功!' : '删除失败!');
					refreshTable();
				}
			});
		}
	});
}
function modify(){
	$(".modifyData").click(function() {//修改按钮
        var $this = $(this);
        $("#dialog").show();
		$('input.username').val($this.attr('username'));
		$('input.password').val($this.attr('password'));
		user_id = $this.attr('user_id');
	});
}