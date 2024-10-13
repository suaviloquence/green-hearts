extends Level




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var meet_cute = preload("res://agni_meet_cute.tscn").instantiate()
	meet_cute.player = player
	add_child(meet_cute)
	await meet_cute.done
	
	var picnic := preload("res://agni_picnic.tscn").instantiate()
	picnic.player = player
	add_child(picnic)
	await picnic.done
	
	var sorting_interlude := preload("res://sorting_interlude.tscn").instantiate()
	sorting_interlude.player = player
	add_child(sorting_interlude)
	await sorting_interlude.done
	
	var sorting_game := preload("res://sorting_game.tscn").instantiate()
	add_child(sorting_game)
	var res = await sorting_game.end
	var mistakes: int = res[0]
	var time_left: int = res[1]
	
	var post_game := preload("res://agni_post_game.tscn").instantiate()
	post_game.mistakes = mistakes
	post_game.time_left = time_left
	post_game.player = player
	add_child(post_game)
	await post_game.done
	
	var confession := preload("res://agni_confession.tscn").instantiate()
	confession.player = player
	add_child(confession)
	await confession.done
	
	var endings := preload("res://agni_endings.tscn").instantiate()
	endings.player = player
	add_child(endings)
	await endings.done
	
	done.emit()
