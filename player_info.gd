extends Node2D

func start_with(player: Player) -> void:
	var Level := preload("res://level.tscn")
	var intro := Level.instantiate()
	intro.player = player
	intro.tree = DialogNode.new("Welcome.  Please enter your name: ", Terminus.new());
	add_child(intro)
	await intro.done
	
	while not player.player_name:
		$Name.show()
		$Name.text = ""
		var box_abuse = Level.instantiate()
		box_abuse.tree = DialogNode.new("", Terminus.new())
		box_abuse.player = player
		add_child(box_abuse)
		move_child(box_abuse, 1)
		await box_abuse.done
		
		if not $Name.text: continue
		
		$Name.hide()
		
		var confirm = Level.instantiate()
		confirm.tree = Choose2.new("You entered %s.  Is that correct?" % [$Name.text], Terminus.new(
			func(player):
				player.player_name = $Name.text
		), "Yes", Terminus.new(), "No")
		confirm.player = player
		add_child(confirm)
		await confirm.done
	
	var prns = Level.instantiate()
	prns.player = player
	prns.tree = Choose3.new("What are your pronouns?", Terminus.new(
		func(player):
			player.they = "he"
			player.them = "him"
			player.their = "his"
			player.theirs = "his"
			player.themself = "himself"
	), "he/him", Terminus.new(
		func(player):
			player.they = "she"
			player.them = "her"
			player.their = "her"
			player.theirs = "hers"
			player.themself = "herself"
	), "she/her", Terminus.new(), "they/them")
	add_child(prns)
	await prns.done 
	
