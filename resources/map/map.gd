extends Node2D

@onready var map: TileMapLayer = $TileMapLayer
@export var scroll_speed = Vector2(-4 * 64, 0)

func _process(delta: float) -> void:
	var tile_size := map.tile_set.tile_size
	map.position += delta * scroll_speed
	if map.position.x <= -tile_size.x:
		map.position.x = 0
	
