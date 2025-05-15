extends Control

func _set_enemy_label(enemy_number):
	$Avoided.text = "Enemies avoided: " + str(enemy_number)

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_retry_pressed() -> void:
	get_tree().reload_current_scene()
