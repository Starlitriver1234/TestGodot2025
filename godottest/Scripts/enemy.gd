extends Area2D

var Speed = -300

func _ready() -> void:
	pass # Replace with function body.
func _physics_process(delta):
	global_position.x += Speed * delta
