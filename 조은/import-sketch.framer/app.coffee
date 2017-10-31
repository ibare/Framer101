# Import file "whats-app-ios-11-ramnan"
s = Framer.Importer.load("imported/whats-app-ios-11-ramnan@2x", scale: 1);

# Each Layer

# Layer.visible
# 값: true or false

# 모든 레이어들을 보이지 않도록
s.Contacts.visible = false;
# s.Chat.visible = false;
s.Camera.visible = false;
s.Settings.visible = false;
s.Calls.visible = false;
s.Action.visible = false;


# s.Chat을 Phone Artboard의 Child로
# 부모.addChild(자식)
Phone.addChild(s.Chat);
s.Chat.x = 0;
s.Chat.y = 0;

# Phone 아이콘에 이벤트 추가
# 아이콘을 클릭하면 Action Layer가 보이도록
s.icon_ios_phone.onClick (event, layer) ->
	Phone.addChild(s.Action);
	
	# s.Chat에 blur 효과를 준다.
	s.Chat.animate
		blur: 3
		options:
			time: 0.5
			curve: Bezier.ease
			
	### Group 1
	s.Action.opacity = 0.8;
	s.Action.visible = true;
	s.Action.x = 0;
	s.Action.y = 0;
	###
	
	# Group 1과 동일하다
	s.Action
		visible: true
		x: 0
		y: 0
		opacity: 0.8;

# Action Layer에 이벤트 추가
# 화면을 클릭하면 카메라가 보이도록
s.Action.onClick (event, layer) ->
	Phone.addChild(s.Camera);
	### Group 2
	s.Camera.visible = true;
	s.Camera.x = 0;
	s.Camera.y = 0;
	###
	
	# Group 2와 동일하다
	s.Camera
		visible: true
		x: 0
		y: 0

# Close_Button Layer에 이벤트 추가
# 버튼을 클릭하면 카메라가 사라지도록
s.Close_Button.onClick (event, layer) ->
	Phone.removeChild(s.Action)
	s.Action.visible = false;
	
	# 카메라가 사라지게 한다.
	s.Camera.animate
		y : screen.height
		options: 
			time: 1
			curve: Bezier.ease
	
	# s.Chat의 블러를 제거한다
	s.Chat.animate
		blur: 0
		options:
			time: 1