
# 페이지 컴포넌트 정의
myPage = new PageComponent
	width: screen.width
	height: screen.height
	scrollHorizontal: false

# 스크롤에 따라 페이지 이미지 랜덤하게 변경
for i in [0..5]
	page = new Layer
		width: screen.width
		height: screen.height
		backgroundColor: Utils.randomColor()
		y: i*screen.height
		parent: myPage.content
	