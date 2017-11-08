
Screen.backgroundColor = 'white'

bar = new ScrollComponent
	y: Align.top(200)
	width: screen.width
	height: 150
	backgroundColor: 'white'
	scrollVertical: false
	

box1 = new Layer
	width: 150
	height: 150
	borderRadius: 75
	image: Utils.randomImage()
	backgroundColor: 'red'
	
box2 = new Layer
	x: 150
	width: 150
	height: 150
	borderRadius: 75
	image: Utils.randomImage()
	backgroundColor: 'green'
	
box3 = new Layer
	x: 300
	width: 150
	height: 150
	borderRadius: 75
	image: Utils.randomImage()
	backgroundColor: 'yellow'
	
box4 = new Layer
	x: 450
	width: 150
	height: 150
	borderRadius: 75
	image: Utils.randomImage()
	backgroundColor: 'blue'
	
	
box1.parent = bar.content
box2.parent = bar.content
box3.parent = bar.content
box4.parent = bar.content

