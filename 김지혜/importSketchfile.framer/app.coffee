# Import file "whats-app-ios-11-ramnan"
sketch = Framer.Importer.load("imported/whats-app-ios-11-ramnan@2x", scale: 1)

sketch.Chat.visible = true
sketch.Contacts.visible = false

sketch.Chat.x = 0
sketch.Chat.y = 0

sketch.Reply_Message.x = Screen.width
sketch.Reply_Message.opacity = 0

sketch.Reply_Message.animate
		opacity: 1
		x: 90
		options:
			delay: .5
			time: .6
			curve: Bezier.ease
	

