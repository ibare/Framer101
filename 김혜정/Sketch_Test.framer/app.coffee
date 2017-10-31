# Import file "whats-app-ios-11-ramnan"
sketch = Framer.Importer.load("imported/whats-app-ios-11-ramnan@1x", scale: 1)

sketch.Chat.visible = true
sketch.Contacts.visible = false

sketch.Reply_Message.x = Screen.width

Action.onClick (event, layer)->
	sketch.Reply_Message.animate
		x: 100
		options:
			time: 0.6
			curve: Bezier.ease







