# Import file "whats-app-ios-11-ramnan"
sketch = Framer.Importer.load("imported/whats-app-ios-11-ramnan@4x", scale: 1)

sketch.Contacts.visible = false
# sketch.Chat.visible = false
sketch.Settings.visible = false
sketch.Calls.visible = false
sketch.Camera.visible = false
sketch.Status.visible = false
sketch.Action.visible = false

Action = sketch.Action



sketch.Chat.x = 0
sketch.Chat.y = 0

Phone.addChild(sketch.Chat)

sketch.icon_ios_phone.onClick (event, layer) ->
	Phone.addChild(sketch.Action)
	
	sketch.Chat.animate
		blur: 3
		options: 
			time: 1
			curve: Bezier.ease
	
	Action.visible = true
	Action.opacity = .8
	Action.x = 0
	Action.y = 0
	
sketch.Action.onClick (event, layer) ->
	Phone.addChild(sketch.Camera)
	sketch.Camera.visible = true
	sketch.Camera.x = 0
	sketch.Camera.y = 0
	
sketch.Close_Button.onClick (event, layer) ->
	Phone.removeChild(sketch.Action)
	sketch.Action.visible = false
	
	sketch.Camera.animate
		y : Screen.height
		options:
			time: 1
			curve: Spring
			
	sketch.Chat.animate
		blur: 0
		options: 
			time: 1
			curve: Bezier.ease
	
	

