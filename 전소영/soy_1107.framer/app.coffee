# Import file "whats-app-ios-11-ramnan"
sketch = Framer.Importer.load("imported/whats-app-ios-11-ramnan@3x", scale: 1)

sketch.Contacts.visible = false
sketch.Chat.visible = false
sketch.Action.visible = false
sketch.Calls.visible = false
sketch.Status.visible = false	
sketch.Camera.visible = true
sketch.Settings.visible = false

Camera = sketch.Camera
Action = sketch.Action

sketch.Camera.x = 0
sketch.Camera.y = 0
sketch.Action.x = 0
sketch.Action.y = 0


# 카메라 아이콘 클릭 시 Action 화면 호출
Phone.addChild(sketch.Camera)

sketch.Group_31.onClick (evnet, layer) -> 
	Phone.addChild(sketch.Action)
	Action.visible = true
	Action.opacity = .9
	Action.x = 0
	Action.y = 0

# Cancel 버튼 탭 시 Action 화면 닫기
Cancel.x = (Screen.width/2)

Cancel.onClick (event, layer) ->
	Phone.addChild(sketch.Action)
	Action.visible = false

# 아래 사진들 Scroll



	

	


