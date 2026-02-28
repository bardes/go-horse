extends Node2D

signal score_changed


@export var scroll_speed = -4 * 64
var score = 0:
	set(value):
		score = value
		score_changed.emit()
