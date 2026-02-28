extends Node2D

@onready var map: TileMapLayer = $TileMapLayer

func _process(delta: float) -> void:
	var tile_size := map.tile_set.tile_size
	map.position.x += Globals.scroll_speed * delta
	if map.position.x <= -tile_size.x:
		map.position.x = 0
	
