# Import file "whats-app-ios-11-ramnan"
sketch = Framer.Importer.load("imported/whats-app-ios-11-ramnan@2x", scale: 1)

sketch.Contacts.visible = false
#sketch.Chat.visible = false
sketch.Settings.visible = false
sketch.Calls.visible = false
sketch.Camera.visible = false
sketch.Action.visible = false
sketch.Status.visible = false

sketch.Chat.x = 0
sketch.Chat.y = 0

#변수정의
Action = sketch.Action
Camera = sketch.Camera

#속성의 하위속성을 정의함 - 스케치의 닫기버튼을 카메라의 닫기버튼으로 재정의함
Camera.closebutton = sketch.Close_Button


#이벤트
#액션화면을 부른다.
Phone.addChild(sketch.Chat)
sketch.icon_ios_phone.onClick (event, layer) ->
	Phone.addChild(sketch.Action)

#채팅화면을 블러를 넣는다.
	sketch.Chat.animate
		blur: 3
		options: 
			time: 1
			curve: Bezier.ease
			
	Action.visible = true
	Action.opacity = .8
#	sketch.Chat.blur = .7
	sketch.Action.x = 0
	sketch.Action.y = 0
	
#플레이가가 안되는 예시	
# 	sketch.Action
# 		visible: true
# 		opacity:.8
# 		x:0
# 		y:0

#액션화면을 누르면 카메라를 부른다.
sketch.Action.onClick (event, layer) ->
	Phone.addChild(sketch.Action)
	sketch.Camera.visible = true
	sketch.Camera.x = 0
	sketch.Camera.y = 0
 	
# 	sketch.Camera
# 		visible: true
# 		x:0
# 		y:0

#카메라 화면을 닫고 채팅화면으로 이동
	Camera.closebutton.onClick (event, layer) ->
	Phone.removeChild(sketch.Camera)
	sketch.Camera.visible = false
	sketch.Action.visible = false
	
	sketch.Camera.animate
		y: Screen.height
		option: 
			time: .8
			curve: Spring
	
	sketch.Chat.animate
		blur: 0
		options: 
			time: 1
			curve: Bezier.ease


# 	Phone.removeChild(sketch.Action)
# 	sketch.Camera.visible = false
# 	sketch.Action.visible = false
