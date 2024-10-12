extends Level

func _ready():
	self.tree = DialogNode.new("Welcome to your new life", Choose3.new(
		"who u wanna date girl?",
		...
	), null)
	super._ready()
