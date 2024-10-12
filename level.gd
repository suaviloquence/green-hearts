class_name Level
extends Node2D

signal done

@export var tree: DialogTree

@onready var player := $Player as Player


func _ready() -> void:
	render_tree(tree)

func render_tree(dtree: DialogTree):
	if dtree.mutate_player:
		dtree.mutate_player.call(player)
	var data := 0
	if dtree is DialogNode:
		var node := preload("res://story_box_continue.tscn").instantiate()
		node.text = dtree.text
		add_box(node)
		await node.really_done
		node.queue_free()
	elif dtree is Choose2:
		var node := preload("res://story_box_choose2.tscn").instantiate()
		node.text = dtree.text
		node.first_text = dtree.first_text
		node.second_text = dtree.second_text
		add_box(node)
		data = await node.chose
		node.queue_free()
	elif dtree is Choose3:
		var node := preload("res://story_box_choose3.tscn").instantiate()
		node.text = dtree.text
		node.first_text = dtree.first_text
		node.second_text = dtree.second_text
		node.third_text = dtree.third_text
		add_box(node)
		data = await node.chose
		node.queue_free()
	elif dtree is Terminus:
		done.emit()
	dtree = dtree.next(data)
	render_tree(dtree)

func add_box(node: StoryBox):
	node.position = Vector2(768/2, 512-128/2)
	add_child(node)
