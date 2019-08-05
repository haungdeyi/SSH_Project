  $(function(){
	  var firstLi = $("#firstmenulist li");
	  firstLi.mouseover(function(){
		//将当前菜单展开
		$(this).find("ul").css("display","block");
		//图标转为向下
		$(this).find("span").removeClass("glyphicon-chevron-right");
		$(this).find("span").addClass("glyphicon-chevron-down");
	  });
	  
	  firstLi.mouseout(function(){
		//将当前菜单收起
		$(this).find("ul").css("display","none");
		//图标转为向右
		$(this).find("span").removeClass("glyphicon-chevron-down");
		$(this).find("span").addClass("glyphicon-chevron-right");
	  });
  });
  
  function test(){
	  alert("hello");
  }