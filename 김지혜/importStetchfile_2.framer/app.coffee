# Import file "whats-app-ios-11-ramnan"
sketch = Framer.Importer.load("imported/whats-app-ios-11-ramnan@2x", scale: 1)

sketch.Contacts.visible = false
# sketch.Chat.visible = false
sketch.Camera.visible = false
sketch.Calls.visible = false
sketch.Help.visible = false
sketch.Status.visible = false
sketch.Action.visible = false

Action = sketch.Action
Camera = sketch.Camera

sketch.Chat.x = 0
sketch.Chat.y = 0

Phone.addChild(sketch.Chat)

sketch.icon_ios_phone.onClick (event, layer) ->
	Phone.addChild(sketch.Action)
	sketch.Chat.animate
		blur: 8
		options:
			time: .5
			curve: Bezier.ease
	sketch.Action.visible = true
	sketch.Action.opacity = .8
	sketch.Action.x = 0
	sketch.Action.Y = 0
	
	
Action.onClick (event, layer) ->
	
	Phone.addChild(Camera)
	Camera.visible = true
	sketch.Chat.blur = 0
	Camera.x = 0
	Camera.y = 0

	
sketch.Close_Button.onClick (event, layer) ->

	Phone.removeChild(sketch.Action)
	sketch.Camera.animate
		y : Screen.height
		opacity: 0
		options:
			time: .5
			curve: Bezier.ease


	
	sketch.Camera.visible = true
	Action.visible = false


	
	
	

