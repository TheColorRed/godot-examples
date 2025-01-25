extends Node2D

func _process(delta: float) -> void:
	var axis = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	if axis != Vector2.ZERO:
		position += axis.normalized() * 400 * delta