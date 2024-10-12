extends Node2D


@onready var player := $Player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#await $PlayerInfo.start_with(player)
	player.player_name = "PLAYEr"
	
	var selection = preload("res://selection.tscn").instantiate()
	selection.player = player
	add_child(selection)
	await selection.done
	
	match player.mission:
		Player.Mission.Agni:
			var agni := preload("res://agni.tscn").instantiate()
			agni.player = player
			add_child(agni)
			await agni.done
		Player.Mission.Nile:
			var nile := preload("res://nile_meet_cute.tscn").instantiate()
			nile.player = player
			add_child(nile)
			await nile.done
		Player.Mission.Rhea:
			var rhea := preload("res://rhea.tscn").instantiate()
			rhea.player = player
			add_child(rhea)
			await rhea.done
