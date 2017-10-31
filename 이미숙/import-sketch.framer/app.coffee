# Import file "whats-app-ios-11-ramnan"
sketch = Framer.Importer.load("imported/whats-app-ios-11-ramnan@1x", scale: 1)


sketch.Contacts.visible = false
#sketch.Chat.visible = false
sketch.Help.visible = false
sketch.Settings.visible = false
sketch.Calls.visible = false
sketch.Action.visible = false
sketch.Camera.visible = false

Action = sketch.Action
Camera = sketch.Camera
Camera.Close_Button = sketch.Close_Button
Chat = sketch.Chat

Chat.x = 0
Chat.y = 0

phone.addChild(sketch.Chat)

sketch.icon_ios_phone.onClick (event, layer) ->
	phone.addChild(Action)
	
	sketch.Chat.animate
		blur: 3
		options: 
			time: 1
			curve: Bezier.ease
			
	
	Action.visible = true
	Action.opacity = .8
	Action.x = 0
	Action.y = 0
	
Action.onClick (event, layer) ->
	phone.addChild(Camera)
	Camera.visible = true
	
	Camera.x = 0
	Camera.y = 0
	
Camera.Close_Button.onClick (event, layer) ->
	phone.removeChild(Camera)
	Action.visible = false
	
	Camera.animate
		y: Screen.height
		options: 
			time:.7
			curve:Spring
		
	Chat.animate
		blur: 0
		options: 
			time:1
			curve: Bezier.ease
		
