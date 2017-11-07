box = new Layer
	x: Align.center
	y: Align.center
	width: 150
	height: 150
	backgroundColor: 'blue'
	
box.states.r45 =
	rotation: 45
	animationOptions:
		time: .8
		curve: Spring
				
box.states.r90 =
	rotation: 90
	
box.onClick ->
	box.stateCycle('r45', 'r90')
		
	
	
	