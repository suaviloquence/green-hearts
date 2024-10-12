extends Level




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var tree = DialogNode.new("This is the tree for Agni", null)
	self.tree = tree
	super._ready()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
