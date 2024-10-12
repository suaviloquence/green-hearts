extends Level

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.tree = DialogNode.new("This is the tree for Rhea", null, null, null)
	super._ready() # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
