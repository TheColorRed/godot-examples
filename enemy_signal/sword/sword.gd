class_name Sword
extends Node2D


func _on_area_entered(area: Area2D, damage: int):
	# "Enemy" would be a script on the root of the scene containing the enemies area2D
	var enemy: Enemy2 = area.owner
	if enemy:
		enemy.apply_damage(damage)