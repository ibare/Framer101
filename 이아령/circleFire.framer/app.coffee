fire.onClick (event, layer) ->
	
	circle.animate
		y: 100
		options: 
			time: 1
			curve: Bezier.ease
		