class_name Choose3
extends DialogTree

@export var first: DialogTree
@export var first_text: String
@export var second: DialogTree
@export var second_text: String
@export var third: DialogTree
@export var third_text: String

	
func _next(data: int) -> DialogTree:
	assert(data == 1 or data == 2 or data == 3)
	if data == 1:
		return first
	elif data == 2:
		return second
	else:
		return third
