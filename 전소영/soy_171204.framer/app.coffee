pageComp1 = new PageComponent
	width: screen.width
	height: screen.height
	scrollHorizontal: false
	
main_02 = new Layer
	width: 375
	height: 667
	image: "images/main_02.jpg"
	
main_03 = new Layer
	width: 375
	height: 667
	image: "images/main_03.jpg"

main_01_2xD = new Layer
	width: 375
	height: 667
	image: "images/main_01@2x.jpg"
	
###
main_02.parent = pageComp1.content
main_03.parent = pageComp1.content
main_01_2xD.parent = pageComp1.content
###

pageComp1.addPage(main_01_2xD);
pageComp1.addPage(main_02,"bottom");
pageComp1.addPage(main_03, "bottom");


	
		
		
	
###
Screen.backgroundColor = "white"

# 페이지 컴포넌트 정의
myPage = new PageComponent
	width: screen.width
	height: screen.height
	scrollHorizontal: false

# 스크롤에 따라 페이지 이미지 랜덤하게 변경
for i in [0..4]
	page = new Layer
		width: screen.width
		height: screen.height
		backgroundColor: Utils.randomColor()
		y: i*screen.height
		parent: myPage.content

# 앱 다운로드 페이지
appDown = new Layer
	y: Align.bottom(0)
	width: screen.width
	height: 200
	backgroundColor: "white"
	visible: false

# 앱 다운로드 페이지 닫기
close = new Layer
	x: Align.right(-20)
	y: Align.bottom(-150)
	width: 30
	height: 30
	backgroundColor: "black"
	visible: false

# 4초 딜레이 후 노출시키기
Utils.delay 4, ->
	appDown.visible = true
	close.visible = true

# close 레이어 탭 시 다 숨기기
close.onClick (event, layer) ->
	appDown.visible = false
	close.visible = false
###








