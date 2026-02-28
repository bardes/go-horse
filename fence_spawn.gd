extends Path2D

@onready var path = $PathFollow2D
const fences = [
	preload("res://resources/fence/fence_small.tscn"),
	preload("res://resources/fence/fence_medium.tscn"),
]


func _ready():
	call_deferred("spawn_fence")


func _on_timer_timeout() -> void:
	spawn_fence()


func spawn_fence() -> void:
	path.progress_ratio = randf()
	var instance: Node2D = fences.pick_random().instantiate()
	get_parent().add_child(instance)
	instance.global_position = path.global_position
