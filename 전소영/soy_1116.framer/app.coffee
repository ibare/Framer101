

###
box1 = new Layer
	width: 500
	height: 500
	backgroundColor: 'red'

box2 = new Layer
	width: 500
	height: 500
	backgroundColor: 'green'

box3 = new Layer
	width: 500
	height: 500
	backgroundColor: 'blue'
###
	
pageComp1 = new PageComponent
	width: screen.width
	height: screen.height
	scrollHorizontal: false
	index:0
	directionLock: true

for value in [0..10]
	box = new Layer
		width: 500
		height: 500
		image: Utils.randomImage()
	pageComp1.addPage(box)


###
box1.parent = pageComp1.content
box2.parent = pageComp1.content
box3.parent = pageComp1.content
###


###
for value in [0..10]
	print value
	Page2 = new Layer
		width: 400
		height: 400
		image: Utils.randomImage()
	box.addPage(Page2)
###

	