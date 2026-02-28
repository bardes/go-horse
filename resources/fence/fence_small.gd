extends Node2D

func _process(delta: float) -> void:
	position.x += Globals.scroll_speed * delta
