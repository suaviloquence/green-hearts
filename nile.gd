extends Level


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var meet_cute := preload("res://nile_meet_cute.tscn").instantiate()
	meet_cute.player = player
	add_child(meet_cute)
	await meet_cute.done
	
	var interlude := preload("res://nile_interlude_togame.tscn").instantiate()
	interlude.player = player
	add_child(interlude)
	await interlude.done
	
	var minigame := preload("res://ShoppingMinigame.tscn").instantiate()
	add_child(minigame)
	var output = await minigame.end;
	var sus = output[0]
	var taste = output[1]
	
	var date := preload("res://nile_cooking_date.tscn").instantiate()
	date.player = player
	date.sustainability = sus
	date.taste = taste
	add_child(date)
	await date.done
	
	var confession := preload("res://nile_confession.tscn").instantiate()
	confession.player = player
	add_child(confession)
	await confession.done
	
	var ending := preload("res://nile_endings.tscn").instantiate()
	ending.player = player
	add_child(ending)
	await ending.done
