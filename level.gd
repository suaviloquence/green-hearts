class_name Level
extends Node2D

signal done

@export var tree: DialogTree

@onready var player := $Player as Player

func _ready():
	render_tree(tree)

func render_tree(dtree: DialogTree):
	while dtree and dtree is not Terminus:
		if dtree and dtree.mutate_player:
			dtree.mutate_player.call(player)
		var data := 0
		if dtree is DialogNode:
			var node := preload("res://story_box_continue.tscn").instantiate()
			node.text = render(dtree.text)
			add_box(node)
			await node.really_done
			node.queue_free()
		elif dtree is Choose2:
			var node := preload("res://story_box_choose2.tscn").instantiate()
			node.text = render(dtree.text)
			node.first_text = render(dtree.first_text)
			node.second_text = render(dtree.second_text)
			add_box(node)
			data = await node.chose
			node.queue_free()
		elif dtree is Choose3:
			var node := preload("res://story_box_choose3.tscn").instantiate()
			node.text = render(dtree.text)
			node.first_text = render(dtree.first_text)
			node.second_text = render(dtree.second_text)
			node.third_text = render(dtree.third_text)
			add_box(node)
			data = await node.chose
			node.queue_free()
		
		dtree = dtree.next(data)
	
	done.emit()
	self.queue_free()

func add_box(node: StoryBox):
	node.position = Vector2(768/2, 512-128/2)
	add_child(node)
	
func cap1(s: String) -> String:
	return s[0].to_upper() + s.substr(1)

func render(text: String) -> String:
	text = text.replace("$name", player.player_name)
	text = text.replace("$they", player.they);
	text = text.replace("$them", player.them);
	text = text.replace("$their", player.their);
	text = text.replace("$theirs", player.theirs);
	text = text.replace("$themself", player.themself);
	text = text.replace("$They", cap1(player.they));
	text = text.replace("$Them", cap1(player.them));
	text = text.replace("$Their", cap1(player.their));
	text = text.replace("$Theirs", cap1(player.theirs));
	text = text.replace("$Themself", cap1(player.themself));
	
	
	return text
