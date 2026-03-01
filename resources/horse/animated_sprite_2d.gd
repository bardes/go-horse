extends AnimatedSprite2D


func _enter_tree():
	Globals.game_pause_changed.connect(_on_game_paused)


func _exit_tree():
	Globals.game_pause_changed.disconnect(_on_game_paused)


func _on_game_paused(paused: bool):
	if paused:
		play("idle")
	else:
		play("run")
