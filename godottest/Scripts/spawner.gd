extends Node2D

var enemy_scene = preload("res://Scenes/enemy.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	spawn()
	
func spawn():
	var Position_array = $Position.get_children()
	var Random = Position_array.pick_random()
	var EnemyInstance = enemy_scene.instantiate()
	EnemyInstance.global_position = Random.global_position
	
