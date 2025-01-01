extends CharacterBody2D

func _physics_process(delta):
	velocity = Vector2(0, 0)
	if Input.is_action_pressed("move_right"):
		velocity.x = 100
	if Input.is_action_pressed("move_left"):
		velocity.x = -100
	if Input.is_action_pressed("move_up"):
		velocity.y = -100
	if Input.is_action_pressed("move_down"):
		velocity.y = 100	
	move_and_slide()
