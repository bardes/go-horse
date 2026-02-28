extends Node2D

@onready var animation = $AnimationPlayer

var is_jumping: bool:
	get():
		return animation.is_playing()


func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion and not is_jumping:
		position.y = event.position.y
	elif event is InputEventMouseButton and event.pressed:
		animation.play("jump")


func _on_collision_area_area_entered(area: Area2D) -> void:
	if is_jumping:
		Globals.score += 1
	else:
		Globals.score = 0
