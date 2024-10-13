extends Level

signal rst

func _ready() -> void:
	tree = DialogNode.new(
		"Game over", 
		Choose2.new("Would you like to try again?", 
			Terminus.new(func(_p): retry()), "Yes", 
			Terminus.new(func(_p): get_tree().quit()), "No"
		)
	)
	super._ready()

func retry():
	rst.emit()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
