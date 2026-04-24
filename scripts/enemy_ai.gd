extends CharacterBody3D

@export var move_speed: float = 3.0
@export var aggro_radius: float = 8.0
@export var attack_range: float = 1.8

@onready var _player: CharacterBody3D = get_tree().get_first_node_in_group("player") as CharacterBody3D

func _ready() -> void:
	if not is_in_group("enemy"):
		add_to_group("enemy")

func _physics_process(_delta: float) -> void:
	if _player == null:
		return

	var distance := global_position.distance_to(_player.global_position)
	if distance > aggro_radius:
		velocity = Vector3.ZERO
		move_and_slide()
		return

	if distance <= attack_range:
		velocity = Vector3.ZERO
		_attack_player()
		move_and_slide()
		return

	var to_player := (_player.global_position - global_position).normalized()
	velocity.x = to_player.x * move_speed
	velocity.z = to_player.z * move_speed
	move_and_slide()

func _attack_player() -> void:
	# Placeholder for animation/state machine integration.
	print("Enemy attacks")
