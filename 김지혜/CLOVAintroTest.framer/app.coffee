IntroA.backgroundColor='2ac1bc'

imgB.x = screen.width
imgB.opacity = 0
imgB.visible = false

imgC.x = screen.width
imgC.visible = false
imgC.opacity = 0

titleA = new TextLayer
	text: "Hello"
	x: Align.center
	y: 80
	fontSize: 50
	color: '2ac1bc'


titleB = new TextLayer
	text: "Chicken"
	x: Align.center
	y: 80
	fontSize: 50
	color: 'white'

	
titleC = new TextLayer
	text: "Speak"
	x: Align.center
	y: 80
	fontSize: 50
	color: 'white'


titleA.visible = true
titleB.visible = false
titleC.visible = false

	
titleA.animate
	opacity: 1
	color: 'white'
	options:
		time: 2
		curve: Bezier.ease
		
titleB.animate
	opacity: 0
	color: 'white'
	options:
		time: 1
		curve: Bezier.ease
		
titleC.animate
	opacity: 0
	color: 'white'
	options:
		time: 1
		curve: Bezier.ease	
		



imgA.x = 120
imgA.opacity = 0

imgA.animate
	x : 37
	opacity: 1
	options:
		time: 1.3
		curve: Bezier.ease
		delay: .3
	titleA.opacity = 1
	

imgA.onSwipeLeft (event, layer) ->
	imgA.animate
		x : -200
		opacity: 0
		options:
			time: 1
			curve: Bezier.ease
			delay: 0
	titleA.animate
		opacity: 0	
		options:
			time: 1.5
			curve: Bezier.ease
			delay: 0
	imgB.visible = true
	imgB.animate
		opacity : 1
		x : 70
		options:
			time: 1
			curve: Bezier.ease
			delay: 0
	titleB.visible = true
	titleB.animate
		opacity : 1
		x : Align.center

imgB.onSwipeLeft (event, layer) ->
	imgB.animate
		x : -200
		opacity: 0
		options:
			time: .6
			curve: Bezier.ease
			delay: 0
	titleB.animate
		opacity: 0	
		options:
			time: 1
			curve: Bezier.ease
			delay: 0
	imgC.visible = true
	imgC.animate
		opacity : 1
		x : 70
		options:
			time: .6
			curve: Bezier.ease
			delay: 0
	titleC.visible = true
	titleC.animate
		opacity : 1
		x : Align.center


