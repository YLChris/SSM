$(function(){
			
	$('.show').click(function(){
		
		if($('.no_show').css('display')=='none'){
			$('.no_show').css('display','block');
		}else if($('.no_show').css('display')=='block'){
			$('.no_show').css('display','none');
		}
		$('.no_show ul li').each(function(){
			$(this).click(function(){
				$('.show span').text($(this).text());
				$('.no_show').css('display','none');
			});
		});
	});
});