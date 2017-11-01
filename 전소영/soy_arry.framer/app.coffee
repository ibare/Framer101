colors = ['red','yellow','green']
pages =[]

page = new PageComponent
	width:  screen.width
	height: screen.height
	scrollVertical: false
	
for color in colors
	# print colors
	p = new Layer
		width: page.width
		height: page.height
		backgroundColor: color
	
	page.addPage (p)
	
	text = new TextLayer
		text: color
		color: 'white'
		x: Align.center
		y: Align.center
		
	p.addChild(text)