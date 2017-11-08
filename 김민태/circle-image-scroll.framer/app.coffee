Screen.backgroundColor = 'white'

progress = new Layer
	y: Align.top(0)
	width: 0
	height: 2
	backgroundColor: 'lightgreen'
	
progress.animate
	width: Screen.width
	options:
		time: 2
		curve: Bezier.linear

Utils.delay 2, ->			
	progress.visible = false
	
	bestImage = new ScrollComponent 
		y: Align.top(100)
		width: Screen.width
		height: 150
		backgroundColor: 'white'
		scrollVertical: false

	for value in [0..20] 
		box = new Layer
			x: (value * 150) + (10 * value)
			width: 150
			height: 150
			borderRadius: 75	
			parent: bestImage.content
			image: Utils.randomImage()
	
	bestImage.children[0].onMove (event, layer)-> 
		if layer.x < 0
			layer.opacity = .3
		else	
			layer.opacity = 1
			
	hotImage = new PageComponent 
		y: Align.bottom(-100)
		width: Screen.width
		height: 150
		backgroundColor: 'white'
		scrollVertical: false
	
	for value in [0..20] 
		box = new Layer
			width: 150
			height: 150
			borderRadius: 75	
			image: Utils.randomImage()
		hotImage.addPage(box)	
		