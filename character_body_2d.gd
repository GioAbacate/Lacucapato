extends CharacterBody2D


const SPEED = 120.0
const JUMP_VELOCITY = -300.0
var vivo = true

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	if vivo:	
		move_and_slide()

func damege():
	visible = false
	vivo =false
	$Timer.start(0)

func _on_timer_timeout() -> void:
	print("resetanto")
	get_tree().reload_current_scene()
	pass # Replace with function body.
