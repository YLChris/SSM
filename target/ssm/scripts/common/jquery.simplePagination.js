/*
 * 分页效果
 */
(function($){
	//通过$.fn 向jQuery添加新的方法
	$.fn.pagingNation=function(options){
		var defaults={
		    perPage:12,//每一页最大数据量
		    containerClass:'table_bottom',//装载分页按钮的容器
		   /* previousButtonClass:'',//
		    nextButtonClass: '',*/
			previousButtonText: 'Previous',//button属性名
			nextButtonText: 'Next',
			currentPage: 1//当前页面值
		};
		//函数扩展，将options,default合并到{}空语句块里，保证不破坏defaults的结构
		//，后面option将会覆盖defaults里的重复的内容
		var settings = $.extend({}, defaults, options);
		//alert(this);
		return this.each(function() {//return保证链式调用，可接连调用方法
			//直接使用$('tbody tr')会从整个文档从上搜索
			//加上this参数会限定搜索的范围从this指定的btable_item开始搜寻，提高了性能
			var $row=$('tbody tr',this);
			var bPrevious=$('.move_icon span:eq(0)');
			var bNext=$('.move_icon span:eq(4)');
			var pages=Math.ceil($row.length/settings.perPage);//pages是指分页的页数
			var firstPage=$('.table_bottom .firstPage');
			var lastPage=$('.table_bottom .lastPage');
			firstPage.on('click',function(){
				settings.currentPage=1;
				$('#page_wrap .page_item').text(settings.currentPage);
				update();
			});
			lastPage.on('click',function(){
				settings.currentPage=pages;
				$('#page_wrap .page_item').text(settings.currentPage);
				update();
			});
			for(var i=0;i<pages;i++)//生成下拉框
			{
				var lis=document.createElement('li');
				lis.innerHTML=i+1;
				$('.branch_item').append(lis);
			}
			$('#page_wrap span:eq(1)').click(function(){//下拉框
				  $('.branch_item').toggle();
				  $('.branch_item li').each(function(){
				  	  $(this).click(function(){
				  	  		var txt=$(this).text();
				  	  		$('#page_wrap .page_item').text(txt);
					  	  	settings.currentPage=txt;
							update();
							matchTable();
				  	  		$('.branch_item').hide();
				  	  });
				  });
			});
			$('.right_page span').text('第  1 - '+pages+' 项  共'+pages+'项');
			
			update();
			bPrevious.click(function(){
				if (settings.currentPage - 1 < 1) {
					settings.currentPage = 1;
				} else {
					settings.currentPage--;
					$('#page_wrap .page_item').text(settings.currentPage);
					update();
					matchTable();
				}	
			});
			bNext.click(function(){
				if (settings.currentPage + 1 > pages) {
					settings.currentPage = pages;
				} else {
					settings.currentPage++;
					$('#page_wrap .page_item').text(settings.currentPage);
					update();
					matchTable();
				}
			});
			function matchTable(){//匹配表格宽度
				var theads=$('th');
				var index=(settings.currentPage-1)*settings.perPage+1;//每一页的首行#btable_item tr:eq(13) td
				$('#btable_item tr:eq("' + index+ '") td').each(function(i,n) {//"' + index+ '"在引号里加引用类型"' '"
					var _w = $(theads.get(i)).width();
					var _h=$(theads.get(i)).height();
					console.log(this);
					$(this).width(_w).children().width(_w);//此处设置子元素del的宽度
					$(theads.get(i)).width(_w);//因为thead的宽度有小数，小数不会显示出来，实际给td下的div赋的值要比thead的宽度小，所以让之前取出的宽度等于thead的宽度
				});
			}
			function update() {
				var currentPages=$('.move_icon span:eq(2)');
				currentPages.text(settings.currentPage);
				
				var from = ((settings.currentPage - 1) * settings.perPage) + 1;
				var to = from + settings.perPage - 1;

				if (to > $row.length) {
					to = $row.length;
				}
				$row.hide();
				$row.slice((from-1), to).show();
			}
			
		});
		
		
		
	}
}(jQuery))
