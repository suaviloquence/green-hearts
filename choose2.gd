class_name Choose2
extends DialogTree

@export var first: DialogTree
@export var first_text: String
@export var second: DialogTree
@export var second_text: String

func _init(text: String, first: DialogTree, first_text: String, second: DialogTree, second_text: String, sprite: Texture = null, mutate_player = null) -> void:
		self.text = text
		self.first = first
		self.first_text = first_text
		self.second = second
		self.second_text = second_text
		self.sprite = sprite
		self.mutate_player = mutate_player

func _next(data: int) -> DialogTree:
	assert(data == 1 or data == 2)
	if data == 1:
		return first
	else:
		return second
