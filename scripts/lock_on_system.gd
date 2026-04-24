extends Node

func get_closest_enemy(origin: Vector3, enemies: Array[Node3D]) -> Node3D:
	var closest: Node3D = null
	var closest_distance := INF

	for enemy in enemies:
		var dist := origin.distance_to(enemy.global_position)
		if dist < closest_distance:
			closest = enemy
			closest_distance = dist

	return closest
