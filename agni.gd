extends Level




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var meet_cute = preload("res://agni_meet_cute.tscn").instantiate()
	meet_cute.player = player
	add_child(meet_cute)
	await meet_cute.done
