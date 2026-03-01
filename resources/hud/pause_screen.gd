extends Control


func _enter_tree():
	Globals.game_pause_changed.connect(_on_game_paused)


func _exit_tree():
	Globals.game_pause_changed.disconnect(_on_game_paused)


func _gui_input(event):
	if event is InputEventMouseButton and event.pressed:
		Globals.unpause_game()


func _on_game_paused(paused: bool):
	if paused:
		show()
	else:
		hide()
