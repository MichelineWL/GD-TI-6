extends Label

func _process(_delta):
	text = "Life: " + str(GameGlobal.lives)
