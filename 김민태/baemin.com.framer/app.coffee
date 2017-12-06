config = { 
	left: 25
	popupHeight: 250
}

baedalLogo = new Layer
	width: 142
	height: 32
	x: config.left - 7
	y: 60
	index: 100
	scale: .8
	image: "images/logo@2x.png"

contentDownloadButton = new Layer
	width: 114
	height: 126
	x: Screen.width - 120
	y: 60
	index: 100
	opacity: 0
	image: "images/btn_down_app@2x.png"

coverImage = new Layer
	width: 1440
	height: 1024
	scale: 1.1
	x: -600
	image: "images/main_04@2x.jpg"

titleRole = new Layer
	width: 310
	height: 210
	x: config.left
	y: 140
	image: "images/main_text_04@2x.png"

content1TitleRole = new Layer
	width: 280
	height: 152
	x: config.left
	y: 140
	image: "images/ctn01_text_01@2x.png"
content1Description = new TextLayer
    text: '배달이 안되던 동네 맛집까지\n배민라이더스가 직접 배달해드립니다.\n서울 전지역, 경기 일부 지역에서 절찬 운행 중!'
    color: '#fff'
    fontSize: 14
    x: config.left
    y: 320

bike = new Layer
	width: 198
	height: 222
	x: 70
	y: 250
	scale: .8
	index: 40
	image: "images/img-bike@2x.png"

bikeTrace = new Layer
	width: 232
	height: 454
	x: 70
	y: 150
	scale: .8
	index: 30
	opacity: 0
	image: "images/img-road@2x.png"

coverDownloadButton = new Layer
	width: 347
	height: 376
	scale: .4
	x: Screen.width - 260
	y: Screen.height - 280
	image: "images/btn_down@2x.png"

coverPage = new Layer
	name: 'cover'
	size: Screen.size
contentPage1 = new Layer
	name: 'content1'
	size: Screen.size
	backgroundColor: '#2ac1bc'

coverImage.animate
    scale: 1
    options:
        time: 1
        delay: 1
        curve: Bezier.easeInOut
        
coverPage.addChild coverImage
coverPage.addChild titleRole
coverPage.addChild coverDownloadButton

contentPage1.addChild content1TitleRole
contentPage1.addChild content1Description
contentPage1.addChild bike
contentPage1.addChild bikeTrace

page = new PageComponent
	size: Screen.size
	scrollHorizontal: false
	index: 10
	
page.addPage coverPage, 'bottom'
page.addPage contentPage1, 'bottom'

page.on "change:currentPage", ->
    if page.currentPage.name is 'content1'
        bike.animate
            y: 500
            x: Screen.width - 160
            options:
                time: 1
                delay: .5
                curve: Bezier.easeInOut
        bikeTrace.animate
            opacity: 1
            options:
                delay: .8
                time: .6
        bike.onAnimationEnd ->
            contentDownloadButton.animate
                opacity: 1
                options:
                    time: .6
    if page.currentPage.name is 'cover'
        contentDownloadButton.animate
            opacity: 0
            options:
                time: .6
        bike.x = 70
        bike.y = 250
        bikeTrace.opacity = 0

