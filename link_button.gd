extends LinkButton

@export var scene_to_load: String

func _on_New_Game_pressed():
	if scene_to_load.to_lower().contains("level"):
		GameGlobal.lives = 3
	get_tree().change_scene_to_file(str("res://scenes/" + scene_to_load + ".tscn"))
