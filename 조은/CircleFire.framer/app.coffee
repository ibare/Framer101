fire.onClick (event, layer) ->
	circle.animate
		y: 50
		options:
			time: 1
			curve: Bezier.ease