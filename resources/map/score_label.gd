extends Label


func _enter_tree():
	Globals.score_changed.connect(_update_score)


func _exit_tree():
	Globals.score_changed.disconnect(_update_score)


func _update_score():
	text = str("Score: ", Globals.score)
