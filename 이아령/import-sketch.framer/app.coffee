# Import file "whats-app-ios-11-ramnan"
sketch = Framer.Importer.load("imported/whats-app-ios-11-ramnan@1x", scale: 1)

sketch.Chat.visible = true
sketch.Contacts.visible = false

sketch.Chat.x = 0
sketch.Chat.Y = 0

sketch.Reply_Message.x = Screen.width
sketch.Reply_Message.animate
	x: 100
	options:
		time: 1
		curve: Bezier.ease
	opacity: 0 > 100