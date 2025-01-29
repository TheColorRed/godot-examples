class_name EnemySignal_Enemy
extends Node2D

@export var progress: ProgressBar

var health: int = 100:
	set(value):
		health = value
		progress.value = health
		if health <= 0:
			queue_free()

func _ready() -> void:
	progress.value = health

func apply_damage(amount: int):
	health -= amount