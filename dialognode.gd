class_name DialogNode
extends DialogTree

@export var following: DialogTree

func _next(data: int) -> DialogTree:
	return following
	
