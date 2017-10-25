heart.onClick (event, layer) ->

	circle.animate
		y: 50
		backgroundColor: 'red'
		options:
			time: .5
			curve: Bezier.ease
