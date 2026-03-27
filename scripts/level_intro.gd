extends CanvasLayer

@onready var label = $Control/Label
@onready var control = $Control

func _ready():
	label.text = get_tree().current_scene.name
	control.modulate.a = 0
	
	# Simple animation sequence using a Tween
	var tween = create_tween()
	tween.tween_property(control, "modulate:a", 1.0, 0.5) # Fade in
	tween.tween_interval(1.5)                           # Wait
	tween.tween_property(control, "modulate:a", 0.0, 0.5) # Fade out
	tween.tween_callback(queue_free)                      # Destroy
