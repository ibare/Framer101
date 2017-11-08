
Screen.backgroundColor = 'white'

# 프로그레스 바
progress = new Layer
	y: Align.top(0)
	width: 0
	height: 3
	backgroundColor: 'lightgreen'

progress.animate
	width: Screen.width
	options: 
		time: 2
		curve: Bezier.linear
		repeat: 2

Utils.delay 4, ->
	progress.visible = false
	
# 스크롤 컴포넌트는 좌라락~~스크롤 할때 쓴다.
	bestImage = new ScrollComponent
		y: Align.top(200)
		width: screen.width
		height: 150
		backgroundColor: 'white'
		scrollVertical: false

	
	for value in [0..20]
		print value
		box = new Layer
			x: value * 150 + value * 10
			width: 150
			height: 150
			borderRadius: 75
			parent: bestImage.content
			image: Utils.randomImage()
			
	# 페이지 컴포넌트는 스내핑을 한다.
	hotImage = new PageComponent
		y: Align.bottom(-100)
		width: screen.width
		height: 150
		backgroundColor: 'white'
		scrollVertical: false
		
	for value in [0..20]
		print value
		box = new Layer
			width: 150
			height: 150
			borderRadius: 75
			image: Utils.randomImage()
		hotImage.addPage(box)
	
	
###
box1 = new Layer
	width: 150
	height: 150
	borderRadius: 75
	parent: bar.content
	image: Utils.randomImage()
	backgroundColor: 'red'
	
box2 = new Layer
	x: 150
	width: 150
	height: 150
	borderRadius: 75
	parent: bar.content
	image: Utils.randomImage()
	backgroundColor: 'green'
	
box3 = new Layer
	x: 300
	width: 150
	height: 150
	borderRadius: 75
	parent: bar.content
	image: Utils.randomImage()
	backgroundColor: 'yellow'
	
box4 = new Layer
	x: 450
	width: 150
	height: 150
	borderRadius: 75
	parent: bar.content
	image: Utils.randomImage()
	backgroundColor: 'blue'
###

