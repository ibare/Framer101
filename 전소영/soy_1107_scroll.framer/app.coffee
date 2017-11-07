

# 스크롤 컴포넌트 만들기
scroll = new ScrollComponent
	x: Align.center
	y: Align.bottom(-235)
	width: screen.width
	height: 120
	
# 레이어 포함하기
layerScroll = new Layer
	parent: scroll.content
	
scroll.speedX = .5

scroll.scrollHorizontal = true
scroll.scrollVertical = false


