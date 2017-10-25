# topPosition = Snow.y
# Snow.y = Screen.height

Fire.onClick (event, layer) -> 
	Snow.animate
		x: 100
		y: 5
		options:
			time: 1
			curve: Bezier.ease