class_name DialogTree
extends Resource

@export_multiline var text: String
@export var sprite: Texture

var mutate_player = null

func _next(data:int) -> DialogTree:
	return null

func next(data: int) -> DialogTree:
	return _next(data)
