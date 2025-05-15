extends CharacterBody2D


const Speed = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	velocity = Vector2(0, 0)
	if Input.is_action_pressed("Up"):
		velocity.y = -Speed
	if Input.is_action_pressed("Down"):
		velocity.y = Speed
	if Input.is_action_pressed("Right"):
		velocity.x = Speed
	if Input.is_action_pressed("Left"):
		velocity.x = -Speed
	move_and_slide()
