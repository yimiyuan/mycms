$(function(){
	$(".header .nav ul li").click(function(){
		$(".header .nav ul li").removeClass("hover");
		$(".left_menu ul li").removeClass("title_hover");
		$(this).addClass("hover");
		
		$(".left_menu").css("display","none");
		var id = $(this).find("a").attr("for");
		$("#"+id).css("display","block");
	});
	
	$(".left_menu ul li").click(function(){
		$(".left_menu ul li").removeClass("title_hover");
		$(this).addClass("title_hover");
	});
	
});