extends Area3D

signal hit_connected(target: Node)

@export var damage: int = 10

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node) -> void:
	if body.has_method("take_damage"):
		body.take_damage(damage)
		hit_connected.emit(body)
