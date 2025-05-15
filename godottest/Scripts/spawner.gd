extends Node2D

signal enemy_spawned(EnemyInstance)

var enemy_scene = preload("res://Scenes/enemy.tscn")

func _ready() -> void:
	pass


func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	spawn()
	
func spawn():
	var Position_array = $Position.get_children()
	var Random = Position_array.pick_random()
	var EnemyInstance = enemy_scene.instantiate()
	EnemyInstance.global_position = Random.global_position
	enemy_spawned.emit(EnemyInstance)
	
