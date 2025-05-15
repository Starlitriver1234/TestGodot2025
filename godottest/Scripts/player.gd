extends CharacterBody2D

var Speed := 300

func _physics_process(delta):
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
	var screen_size = get_viewport_rect().size
	global_position = global_position.clamp(Vector2(0,0), screen_size)

func died():
	queue_free()
