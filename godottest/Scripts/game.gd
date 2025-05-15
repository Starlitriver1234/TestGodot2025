extends Node2D

var lives = 5
var enemy_number = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_spawner_enemy_spawned(EnemyInstance: Variant) -> void:
	add_child(EnemyInstance)
	enemy_number += 1
	print(enemy_number)


func _on_hurt(lives: Variant) -> void:
	lives -= 1
	print(lives)
