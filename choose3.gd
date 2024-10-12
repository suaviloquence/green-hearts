class_name Choose3
extends DialogTree

@export var first: DialogTree
@export var first_text: String
@export var second: DialogTree
@export var second_text: String
@export var third: DialogTree
@export var third_text: String

func _init(text: String, first: DialogTree, first_text: String, second: DialogTree, second_text: String, third: DialogTree, third_text: String, mutate_player) -> void:
		self.text = text
		self.first = first
		self.first_text = first_text
		self.second = second
		self.second_text = second_text
		self.third = third
		self.third_text = third_text
		self.mutate_player = mutate_player
		
	
	
func _next(data: int) -> DialogTree:
	assert(data == 1 or data == 2 or data == 3)
	if data == 1:
		return first
	elif data == 2:
		return second
	else:
		return third
