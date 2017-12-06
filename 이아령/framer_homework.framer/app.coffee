page = new PageComponent
	width: 375
	height: 667
	scrollHorizontal: false
	
page.addChild(bmLogo);
page.addChild(scroll_1);
page.addChild(btn_download_black)
page.addChild(indicator_1)
page.addChild(indicator_2)
page.addChild(indicator_3)
page.addPage(one)
page.addPage(two, "bottom")
page.addPage(three, "bottom")
page.addPage(four, "bottom")
page.addPage(five, "bottom")

btn_download_black.visible = false
flag.visible = false
woowabros.visible = false
bmriders.visible = false
ceo.visible = false
bmchan.visible = false
indicator_1.visible = false
indicator_2.visible = false
indicator_3.visible = false
btn_download_black.opacity = 0
btn_download_black.scale = .8
indicator_1.opacity = 0
slogan.opacity = 0

page.on "change:currentPage", -> 
	if page.currentPage.name == 'one' 
		btn_download_black.visible = false
bg.scale = 1
bg.animate
	scale: 0.7
	options:
		curve: Bezier.ease
	
bmLogo.opacity = 0	
bmLogo.animate
	opacity: 1
	options: 
		time: 2
		curve: Bezier.ease
		
one_text.opacity = 0	
one_text.animate
	opacity: 1
	options: 
		time: 2
		curve: Bezier.ease
		
scroll_1.opacity = 0	
scroll_1.animate
	opacity: 1
	options: 
		time: 1.05
		curve: Bezier.ease
		
scroll_1.y = 600
scroll_1.animate
	y:590
	options: 
		time: 0.4
		repeat: 3
		curve: Bezier.ease		
		
btn_download_white.opacity = 0
btn_download_white.animate
	opacity: 1
	options :
		time : 1.05
	
btn_download_white.scale = 0.7
btn_download_white.animate
	scale: 1
	options :
		time : 1.05

page.on "change:currentPage", -> 
	if page.currentPage.name == 'two' 
	
		btn_download_black.visible = true
		
		bike.x = 70
		bike.y = 200		
		bike.animate
			x: 180
			y: 450
			options: 
				time: 1.1
				curve: Bezier.ease
			
		road.opacity = 0
		road.animate
			opacity: 1
			options: 
				time: .7
				delay: .2
				
		bike.onAnimationEnd ->
				btn_download_black.animate
					scale: 1
					opacity: 1
				
			
		bmLogo.visible = true
		
		indicator_2.visible = false
		indicator_3.visible = false
		indicator_1.visible = true
		indicator_1.animate
			opacity: 1
			options: 
				delay: .4
				time: .5	
	

page.on "change:currentPage", -> 
	if page.currentPage.name == 'three' 
		people.opacity = 0 
		people.animate
			opacity: 1
			
		people.y = 700
		people.animate
			y:500
			options: 
				time: 1.05
				
		bmLogo.visible = true
		indicator_1.visible = false
		indicator_2.visible = true
		indicator_3.visible = false
						
page.on "change:currentPage", -> 
	if page.currentPage.name == 'four' 
		flag.visible = true
		flag.opacity = 0 
		flag.animate
			opacity: 1
			options: 
				time: 1.05
			
		flag.y = 520
		flag.animate
			y:400
			options: 
				time: 1.05
				
		bmLogo.visible = true
		indicator_1.visible = false
		indicator_3.visible = true
		indicator_2.visible = false

page.on "change:currentPage", -> 
	if page.currentPage.name == 'five' 	

		slogan.animate
			y: 50
			opacity: 1
			options: 
				curve: Bezier.ease
				time: 1
	
		bmLogo.visible = false
		woowabros.visible = true
		woowabros.opacity = 0
		woowabros.animate
			opacity: 1
			options: 
				time: 1.05
				
		bmriders.visible = true
		bmriders.opacity = 0
		bmriders.animate
			opacity: 1
			options: 
				time: 1.05
				delay: .2
		
		ceo.visible = true
		ceo.opacity = 0
		ceo.animate
			opacity: 1
			options: 
				time: 1.05
				delay: .4
				
		bmchan.visible = true
		bmchan.opacity = 0
		bmchan.animate
			opacity: 1
			options: 
				time: 1.05
				delay: .6
				
				
		



			


		