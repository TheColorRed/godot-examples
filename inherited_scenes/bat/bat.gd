extends Node2D

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept") && Input.is_key_pressed(KEY_CTRL):
		position.x -= 100
	elif Input.is_action_just_pressed("ui_accept"):
		position.x += 100