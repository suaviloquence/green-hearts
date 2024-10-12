extends Level


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.tree = DialogNode.new("this is nile's life", null, null, null)
	super._ready()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
