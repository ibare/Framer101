Fire.onClick (event, layer) -> 
	Snow.animate
		x: 100
		y: 10
		options:
			time: 1
			curve: Bezier.ease