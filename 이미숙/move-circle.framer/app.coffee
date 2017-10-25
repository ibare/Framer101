Circle.y = 400

btn_fire.onClick (event, layer) ->
	Circle.animate
		y:100
		options:
			time: .4
			curve: Bezier.ease