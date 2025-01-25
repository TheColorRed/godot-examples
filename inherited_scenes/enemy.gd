class_name Enemy
extends Control

@export var stats: EnemyStats
@export var progress_bar: ProgressBar
@export var label: Label

func _ready() -> void:
	label.text = stats.name
	progress_bar.max_value = stats.max_health
	progress_bar.value = stats.current_health

func _process(_delta: float) -> void:
	progress_bar.value = stats.current_health

func _on_Button_pressed() -> void:
	stats.current_health -= stats.damage
	if stats.current_health <= 0:
		stats.is_active = false
