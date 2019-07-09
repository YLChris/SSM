window.onload=function (){
	var text_wraps=document.getElementsByClassName("text_wrap");//二级菜单
		for(var i = 0 ; i < text_wraps.length ; i++){
			text_wraps[i].onclick = function(){
				var _className = this.parentElement.className;
				console.info(_className);
				 if(_className.indexOf('active') >= 0){
					this.parentElement.className = 'menu_item';
				}else{
					this.parentElement.className = 'menu_item active';
				} 
			}
		}
		$("#main").click(function(){//切换至主页
			$('iframe').attr('src','homepage.html');
		});
		$("#userManage").click(function(){//切换至用户管理界面
			$('iframe').attr('src','user.html');
		});
		$("#roleManage").click(function(){//切换至角色管理界面
			$('iframe').attr('src','role.html');
		});
		$("#tipManage").click(function(){//切换至公告管理界面
			$('iframe').attr('src','notice.html');
		});
		
}