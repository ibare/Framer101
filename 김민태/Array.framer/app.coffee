
colors = ['green', 'red', 'yellow',  'blue']
pages = []

page = new PageComponent
    width: Screen.width
    height: Screen.height
    scrollVertical: false

for color in colors	
	p = new Layer
		width: page.width
		height: page.height
		backgroundColor: color
	page.addPage(p)
	
	text = new TextLayer
		text: color
		color: 'white'
		x: Align.center
		y: Align.center

	p.addChild(text)		
	
