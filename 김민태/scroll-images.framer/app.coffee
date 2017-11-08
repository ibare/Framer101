Screen.backgroundColor = 'white'

imageCount = 30
imageWidth = 100

bestImages = new ScrollComponent
	width: Screen.width
	height: 150
	y: Align.top(100)
	backgroundColor: 'black'
	scrollVertical: false
	
hotImages = new PageComponent
	width: Screen.width
	height: 150
	y: Align.bottom(-100)
	backgroundColor: 'black'
	scrollVertical: false

bestProgress = new Layer
	width: 0
	height: 2
	y: Align.top(98)
	backgroundColor: 'red'
		
for n in [0..imageCount]	
	img = new Layer
		width: imageWidth
		height: 150
		x: n * imageWidth
		image: Utils.randomImage()
		parent: bestImages.content		

for n in [0..imageCount]	
	img = new Layer
		width: imageWidth
		height: 150
		image: Utils.randomImage()
	hotImages.addPage img
	