# Import file "whats-app-ios-11-ramnan"
s = Framer.Importer.load("imported/whats-app-ios-11-ramnan@2x", scale: 1)

s.Contacts.visible = false
#s.Chat.visible = false
s.Settings.visible = false
s.Camera.visible = false
s.Action.visible = false
s.Calls.visible = false


s.Chat.y=0
s.Chat.x = 0

Phone.addChild(s.Chat)
s.icon_ios_phone.onClick (event, layer) ->
	Phone.addChild(s.Action)

	s.Chat.animate
		blur : 3
		options:
			time: 1
			curve: Bezier.ease
	
	s.Action.opacity = .8
	s.Action.visible = true
	s.Action.x = 0
	s.Action.y = 0
	
		
	
	

s.Action.onClick (event, layer) ->
	Phone.addChild(s.Camera)	
	s.Camera.visible = true
	s.Camera.x = 0
	s.Camera.y = 0
	
s.Close_Button.onClick (event, layer) ->
	Phone.removeChild(s.Camera)
	s.Action.visible = false
	
	s.Camera.animate
		y: Screen.height
		option:
			time: .7
			curve: Bezier.ease
			
	s.Chat.blur = 0
