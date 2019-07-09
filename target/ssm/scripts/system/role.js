var role_id;
var currentPage;
var perPage=12;//每页显示的数据
$(function(){
	$(document).ready(function(){
		showTable();
		queryRole();//查询角色
		$("#add").on("click",function(){
			$("#dialog").show();
			role_id = undefined;
			$('.rolename').val(' ');
		});
		addInfoRole();//添加或修改按钮
		$(".quit").click(function(){//dialog取消按钮
			$("#dialog").hide();
		});	
		
	});
		
})

function matchTable(){//匹配表格宽度
	var currentPage=$('#page_wrap .page_item').text();
	var index=(currentPage-1)*perPage+1;//每一页的首行#btable_item tr:eq(13) td
	var theads=$('th');
	console.log($('.btable_item tr:first td'));
	$('#btable_item tr:eq("'+(index-1)+'") td').each(function(i,n) {
		var _w = $(theads.get(i)).width();
		var _h=$(theads.get(i)).height();
		console.log(_h);
		$(this).width(_w).children().width(_w);//此处设置子元素del的宽度
		$(theads.get(i)).width(_w);//因为thead的宽度有小数，小数不会显示出来，实际给td下的div赋的值要比thead的宽度小，所以让之前取出的宽度等于thead的宽度
	});
}
function queryRole(){//查询角色
	$('#query').click(function(){
		$id_item=$('#id_item').val();
		$role_item=$('#role_item').val();
		if($id_item!=""&&$role_item!=""){
			$.ajax({
				url:'role/queryRole.html',
				type:'POST',
				dataType:'json',
				data:{
					role_id:$id_item,
					role_name:$role_item
				},
				success:function(rst){
					console.info(rst);
					if(rst!=""){
						$('#page_wrap .page_item').text(1);
						$('.move_icon span:eq(2)').text(1);
						$('.move_icon span:eq(0),.move_icon span:eq(4),#page_wrap span:eq(1),.table_bottom .firstPage,.table_bottom .lastPage').unbind('click');//选择器多个使用用“逗号”隔开
						/*$('.move_icon span:eq(4)').unbind('click');
						$('#page_wrap span:eq(1)').unbind('click');*/
						loadData(rst);	
						
					}else{
						alert('编号为：'+$id_item+'的角色不存在');
					}	
				}
			});
		}else if($id_item==''){
			alert('角色编号不能为空');
			return false;
		}else if($role_item==''){
			alert('角色名称不能为空');
			return false;
		}
	});
}
function showTable(){//表格数据呈现
	$.ajax({
		url : 'role/listRole.html',
		type : 'POST',
		dataType:'json',
		success : function(rst) {
			console.log(rst);
			loadData(rst);
			deleteRole();//删除role
			$('#btable_item').pagingNation({//进行分页操作
				/*previousButtonClass:'circle c1',
				nextButtonClass: 'circle c5',*/
			});
		}
	});
	
}
function loadData(data){
	$table=$('#btable_item');
	$('#btable_item').find('tr:not()').remove();
	console.info(data);
	$.each(data,function(i,n){
		var root=('root'+n.role_id);
		$table.append('<tr><td id="delete" role_id="' + n.role_id+ '"><div ><span class="fa fa-times-circle" ></span></div></td>'+
                       '<td id="edit" role_name="'+n.role_name+'" role_desc="'+n.role_desc+'" role_id="' + n.role_id+ '"><div><span class="fa fa-pencil-square-o"></span></div></td>'+
                       '<td id="user"><div><span class="fa fa-user-circle-o"></span></div></td>'+
                       '<td id="authority"><div><span class="fa fa-hand-o-right"></span></div></td>'+
                       '<td class="text"><div>'+root+'</div></td>'+
                       '<td class="text"><div>'+n.role_name+'</div></td>'+
                       '<td class="text"><div>'+n.role_desc+'</div></td></tr>'
                   	   );
	});
	matchTable();
	$("tr #edit").each(function(){
		$(this).on("mouseover",function(){
			 $(this).css({"cursor":"pointer","background":"#F5F5F5"});
		});
		$(this).on("mouseout",function(){
			 $(this).css({"cursor":"default","background":"none"});
		});
		$(this).on("click",function(){
			var $this=$(this);
			role_id=$this.attr('role_id');
			$('#dialog').show();
			$('input.rolename').val($this.attr('role_name'));
			$('select.authority').val($this.attr('role_desc'));
		 });
	});	
}
function deleteRole(){
	$("tr #delete").each(function(){
		$(this).on("mouseover",function(){
			 $(this).css({"cursor":"pointer","background":"#F5F5F5"});
		});
		$(this).on("mouseout",function(){
			 $(this).css({"cursor":"default","background":"none"});
		});
		$(this).on("click",function(){
			$role_id=$(this).attr('role_id');
			$.ajax({
				url:'role/deleteRole.html',
				type:'POST',
				data:{
					role_id:$role_id,
				},
				success:function(rst){
					alert(rst>0?'删除编号为root'+$role_id+'成功':'删除失败');
					showTable();
				}
			});
		 });
	});	
}
function addInfoRole(){//添加或修改
	$('.makesure').on("click",function(){
		var rolename=$('.rolename').val();
		var authority=$('.authority').val();
		console.log(role_id);
		$.ajax({
			url:'role/insertOrEditRole.html',
			type:'POST',
			data:{
				role_id:role_id,
				role_name:rolename,
				role_desc:authority,
			},
			success:function(rt){
				showTable();
				$("#dialog").hide();
			}
		});
	});
}
