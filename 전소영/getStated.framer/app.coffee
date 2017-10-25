Play.onClick (event, layer) ->
	Red.animate
		y: 100
		options:
			time: .3
			curve: Bezier.ease
	Green.animate
		y: 100
		options:
			time: .3
			curve: Bezier.easeInOut
	Blue.animate
		y: 100
		options:
			time: .3
			curve: Spring
			
			