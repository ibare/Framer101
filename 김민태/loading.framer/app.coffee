weight = 2

completeText = new TextLayer
	text: '로딩 완료'
	x: Align.center
	y: Align.center
	visible: false
	
progress = new Layer
	x: Align.center
	y: Align.center
	width: 300
	height: weight
		
pbox = new Layer
	x: Align.center(-135)
	y: Align.center
	width: 30
	height: weight		
	backgroundColor: 'lightgreen'
	animationOptions: 
		time: .9
		curve: Bezier.easeOut

pbox.states = 
	toRight: 
		x: Align.center(135)
	toLeft:
		x: Align.center(-135)		
		
handle = Utils.interval 1, -> pbox.stateCycle()
				
Utils.delay 6, -> 
	clearInterval(handle)	
	progress.visible = false
	pbox.visible = false
	completeText.visible = true 		
	