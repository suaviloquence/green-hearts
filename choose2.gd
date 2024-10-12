class_name Choose2
extends DialogTree

@export var first: DialogTree
@export var first_text: String
@export var second: DialogTree
@export var second_text: String

func _next(data: int) -> DialogTree:
	assert(data == 1 or data == 2)
	if data == 1:
		return first
	else:
		return second
