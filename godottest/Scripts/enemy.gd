extends Area2D
var score = 0
var Speed = -300

signal hurt

func _physics_process(delta):
	global_position.x += Speed * delta

func _on_body_entered(body: Node2D) -> void:
	hurt.emit()
	queue_free()


func missed_player() -> void:
	queue_free()
