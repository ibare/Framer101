timing = 0.6;

Play.onClick (event, layer) ->
	Red.animate
		y: 100
		options:
			time: timing
			curve: Bezier.ease
	Green.animate
		y: 100
		options:
			time: timing
			curve: Bezier.easeInOut
	Blue.animate
		y: 100
		options:
			time: timing
			curve: Spring
			
			