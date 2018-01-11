
btn_01_2x = new Layer
	width: Screen.width
	height: 52
	y: Screen.height - 52
	opacity: 0
	image: "images/btn_01@2x.png"

page01_2x = new Layer
	width: Screen.width
	height: Screen.height
	image: "images/page01@2x.png"

page02_2x = new Layer
	width: Screen.width
	height: Screen.height
	#index : 50
	image: "images/page02@2x.png"

radio_off_2x = new Layer
	width: 26
	height: 26
	x : Screen.width - 355
	y: Screen.height - 555	
	image: "images/radio_off@2x.png"

radio_on_2x = new Layer
	width: 26
	height: 26
	x : Screen.width - 355
	y: Screen.height - 555
	opacity: 0
	image: "images/radio_on@2x.png"

toggle_01_2x = new Layer
	width: 98
	height: 26
	x : Screen.width - 140
	y: Screen.height - 475
	opacity: 0
	image: "images/toggle_01@2x.png"		
	
radio_off_2xA = new Layer
	width: 26
	height: 26
	x : Screen.width - 355
	y: Screen.height - 475
	image: "images/radio_off@2x.png"

radio_on_2xA = new Layer
	width: 26
	height: 26
	x : Screen.width - 355
	y: Screen.height - 475
	opacity: 0
	image: "images/radio_on@2x.png"

toggle_01_2xA = new Layer
	width: 98
	height: 26
	x : Screen.width - 140
	y: Screen.height - 555
	opacity: 0
	image: "images/toggle_01@2x.png"

closebtn = new Layer
	width: 50
	height: 50
	index : 50
	x: Screen.width - 370
	y: Screen.height - 640
	backgroundColor: 'red'
	opacity: .2

changebtn = new Layer
	width: 80
	height: 50
	index : 50
	x: Screen.width - 100
	y: Screen.height - 360
	backgroundColor: 'red'
	opacity: .2
	
naverbnt = new Layer
	width: 200
	height: 50
	index : 50
	x: Screen.width - 370
	y: Screen.height - 560
	backgroundColor: 'red'
	opacity: .2

kakaobnt = new Layer
	width: 200
	height: 50
	index : 50
	x: Screen.width - 370
	y: Screen.height - 480
	backgroundColor: 'red'
	opacity: .2

agreebnt = new Layer
	width: 70
	height: 50
	index : 50
	x: Screen.width - 80
	y: Screen.height - 50
	backgroundColor: 'red'
	opacity: 0
	
oderImage = new Layer
	name : 'order'
	size : Screen.size
	
payImage = new Layer
	name: 'pay'
	size: Screen.size

# 주문하기 페이지에 주문페이지 / 변경 버튼 레이어 추가
oderImage.addChild page01_2x
oderImage.addChild changebtn

# 변경 페이지에 버튼들 추가
payImage. addChild page02_2x
payImage. addChild btn_01_2x
payImage. addChild toggle_01_2x
payImage. addChild toggle_01_2xA
payImage. addChild radio_on_2x
payImage. addChild radio_on_2xA
payImage. addChild radio_off_2x
payImage. addChild radio_off_2xA
payImage. addChild closebtn
payImage. addChild naverbnt
payImage. addChild kakaobnt
payImage. addChild agreebnt

# flow  컴포넌트
flow = new FlowComponent
flow.showNext(oderImage)

# 변경 탭 시 결제상세 페이지로 이동
changebtn.onClick ->
	flow.showNext(payImage)

# naver 버튼 탭 시 라디오 / 변경 버튼 노출
naverbnt.onClick ->
	flow.showPrevious(oderImage)
	
# kakao 버튼 탭 시 라디오 / 변경 버튼 노출
kakaobnt.onClick ->
	flow.showPrevious(oderImage)
	
# close 버튼 탭 시 이전페이지로 이동 / 초기화	
closebtn.onClick ->
	flow.showPrevious(oderImage)

	
