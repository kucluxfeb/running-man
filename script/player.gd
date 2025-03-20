extends CharacterBody2D

@onready var player_ui: AnimatedSprite2D = $AnimatedSprite2D

const SPEED = 420.0
const JUMP_VELOCITY = -700.0

func _physics_process(delta: float) -> void:
	if velocity.x != 0:
		player_ui.animation = "run"
	else:
		player_ui.animation = "idle"

	if not is_on_floor():
		velocity += get_gravity() * delta
		player_ui.animation = "jump"

	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		player_ui.flip_h = direction < 0
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
