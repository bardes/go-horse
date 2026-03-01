extends Node2D

signal score_changed
signal game_pause_changed(paused: bool)


@export var scroll_speed = -4 * 64
var score = 0:
	set(value):
		score = value
		score_changed.emit()


func pause_game():
	get_tree().paused = true
	game_pause_changed.emit(true)


func unpause_game():
	get_tree().paused = false
	game_pause_changed.emit(false)
