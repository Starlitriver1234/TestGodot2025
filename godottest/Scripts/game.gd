extends Node2D

var lives = 5
var enemy_number = 0
@onready var player = $Player
@onready var number = $Enemy_Number
@onready var Lives = $Lives

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_spawner_enemy_spawned(EnemyInstance: Variant) -> void:
	add_child(EnemyInstance)
	enemy_number += 1
	_set_enemy_label(enemy_number)
	

func _set_enemy_label(enemy_number):
	number.text = "Enemies: " + str(enemy_number)

func _on_hurt(lives: Variant) -> void:
	lives -= 1
	_set_lives_label(lives)
	
func _set_lives_label(lives):
	Lives.text = "Lives: " + str(lives)


func _on_area_2d_area_entered(area: Area2D) -> void:
	area.missed_player()
