Play.onClick (event, layer) ->
	Red.animate
		y: 100
		options:
			time: 1
			curve: Bezier.ease
	Green.animate
		y: 100
		options:
			time: 1
			curve: Bezier.easeInOut
	Blue.animate
		y: 100
		options:
			time: .6
			curve: Spring
			
			