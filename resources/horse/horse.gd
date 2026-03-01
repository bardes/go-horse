extends Node2D

@onready var animation = $AnimationPlayer

@export var speed = 1.5

var is_jumping: bool:
	get():
		return animation.is_playing()


func _process(delta: float) -> void:
	if not is_jumping:
		var mouse_ypos = get_global_mouse_position().y
		var delta_pos = mouse_ypos - position.y
		position.y += speed * delta_pos * delta


func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed:
		animation.play("jump")


func _on_collision_area_area_entered(area: Area2D) -> void:
	if is_jumping:
		Globals.score += 1
		$AudioStreamPlayer.play()
	else:
		Globals.pause_game()
