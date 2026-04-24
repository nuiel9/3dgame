extends Area3D

signal damaged(amount: int)

@export var max_health: int = 100
var _health: int = max_health

func take_damage(amount: int) -> void:
	_health = max(_health - amount, 0)
	damaged.emit(amount)

	if _health == 0:
		queue_free()
