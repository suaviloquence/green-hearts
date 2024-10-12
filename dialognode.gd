class_name DialogNode
extends DialogTree

@export var following: DialogTree

func _init(text: String, following: DialogTree, mutate_player):
	self.text = text
	self.following = following
	self.mutate_player = mutate_player

func _next(data: int) -> DialogTree:
	return following
	
