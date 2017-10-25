P.onClick (event, layer) ->

	Circle.animate
		y:50
		options:
			time: 1
			curve: Bezier.ease
	