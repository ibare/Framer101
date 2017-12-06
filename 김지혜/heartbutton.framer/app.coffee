circle.opacity = 0

heart.onClick (event, layer) ->
	
	circle.animate
		opacity: 1
		y: 50
		backgroundColor: 'red'
		options:
			time: .5
			curve: Bezier.ease
