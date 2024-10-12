class_name Choose2
extends DialogTree

@export var first: DialogTree
@export var second: DialogTree

func _next(data: int) -> DialogTree:
	assert(data == 1 or data == 2)
	if data == 1:
		return first
	else:
		return second
