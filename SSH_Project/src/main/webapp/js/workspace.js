  $(function(){
	  var firstLi = $("#firstmenulist li");
	  firstLi.mouseover(function(){
		//将当前菜单展开，this指向的是原生的js对象
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
	  
	  checkall();
  });
 
  //选中所有复选框或者取消
  function checkall() {
	  $("#checkall").click(function(){
		  if($(this).prop("checked")){
			  var ids = $("input[name='ids']");
			  ids.each(function(){
				  $(this).prop("checked",true);
			  }); 
		  }
		  else{
			  var ids = $("input[name='ids']");
			  ids.each(function(){
				  $(this).prop("checked",false);
			  });
		  }  
	  });
  }
  
  function submit(){
	  var select = [];
	  $("input[name='ids']").each(function(){
		if($(this).prop("checked")){
			select.push($(this).val());
		}  
	  });
	  
	  select.join(",");
	  
	  $.ajax({
		  url:'linkToMainPage',
		  type:'POST',
		  data:{ids:select.toString()},
		  dataType:'json',
		  async:true,
		  success:function(data){
			  alert("请求成功");
		  },
		  error:function(){
			  alert("尼玛");
		  }
	  });
  }