class_name DialogNode
extends DialogTree

@export var following: DialogTree

func _init(text: String, following: DialogTree, sprite: Texture = null, mutate_player = null):
	self.text = text
	self.following = following
	self.sprite = sprite
	self.mutate_player = mutate_player

func _next(data: int) -> DialogTree:
	return following
	
