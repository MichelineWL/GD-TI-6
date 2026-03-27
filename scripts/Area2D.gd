extends Area2D

@export var sceneName: String

func _on_Area_Trigger_body_entered(body):
	if body.get_name() == "Player":
		# Only subtract lives if we are RE-LOADING the current level (meaning player died)
		if sceneName == get_tree().current_scene.name:
			GameGlobal.lives -= 1
			if GameGlobal.lives <= 0:
				get_tree().change_scene_to_file("res://scenes/Game Over.tscn")
				return
		
		# For win triggers or level reloads (if lives > 0), change scene
		get_tree().call_deferred("change_scene_to_file", str("res://scenes/" + sceneName + ".tscn"))
