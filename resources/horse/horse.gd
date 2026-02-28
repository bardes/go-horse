extends Node2D

@onready var animation = $AnimationPlayer

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion and not animation.is_playing():
		position.y = event.position.y
	elif event is InputEventMouseButton and event.pressed:
		animation.play("jump")
	
