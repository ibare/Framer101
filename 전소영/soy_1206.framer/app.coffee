pageComp1 = new PageComponent
	width: screen.width
	height: screen.height
	scrollHorizontal: false
	
pageComp1.addChild(logo);
pageComp1.addChild(scrolldot);
pageComp1.addChild(selectdot);
pageComp1.addChild(btn_down_black);

pageComp1.addPage(Page1);
pageComp1.addPage(Page2,"bottom");
pageComp1.addPage(Page3, "bottom");

btn_down_black.visible = false
scrolldot.visible = false
selectdot.visible = false

pageComp1.on "change:currentPage", -> 
	if pageComp1.currentPage.name == 'page1' 
		btn_down_black.visible = false
		
		mainbg_01.scale = 1
		mainbg_01.animate
			scale: 0.7
			options:
				curve: Bezier.ease
	

