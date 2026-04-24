extends CharacterBody3D

@export var move_speed: float = 6.0
@export var dodge_speed: float = 12.0
@export var gravity: float = 24.0
@export var attack_cooldown_seconds: float = 0.4

var _attack_timer: float = 0.0
var _dodge_timer: float = 0.0

func _ready() -> void:
	if not is_in_group("player"):
		add_to_group("player")

func _physics_process(delta: float) -> void:
	_apply_gravity(delta)
	_process_movement(delta)
	_process_actions(delta)
	move_and_slide()

func _apply_gravity(delta: float) -> void:
	if not is_on_floor():
		velocity.y -= gravity * delta

func _process_movement(_delta: float) -> void:
	var input_vector := Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_backward") - Input.get_action_strength("move_forward")
	)

	var direction := Vector3(input_vector.x, 0.0, input_vector.y).normalized()
	var current_speed := dodge_speed if _dodge_timer > 0.0 else move_speed

	velocity.x = direction.x * current_speed
	velocity.z = direction.z * current_speed

func _process_actions(delta: float) -> void:
	_attack_timer = max(_attack_timer - delta, 0.0)
	_dodge_timer = max(_dodge_timer - delta, 0.0)

	if Input.is_action_just_pressed("dodge"):
		_dodge_timer = 0.2

	if Input.is_action_just_pressed("attack") and _attack_timer <= 0.0:
		_attack_timer = attack_cooldown_seconds
		_perform_attack()

func _perform_attack() -> void:
	# Hook this into animation notifies and hitbox activation.
	print("Player attack triggered")
