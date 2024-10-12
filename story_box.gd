class_name StoryBox
extends Node2D

@export_multiline var text: String
@export var speed := 3.0

@onready var label := $Area2D/TextureRect/MarginContainer/RichTextLabel as RichTextLabel

signal done

var speed_mult := 1.0

func _ready():
	var lines := text.split("\n")
	label.text = ""
	label.scroll_following = true
	
	for line in lines:
		var words := line.split(" ")
		for word in words:
			label.append_text(word + " ")
			await get_tree().create_timer(1 / (speed * speed_mult)).timeout
		label.append_text("\n")
		await get_tree().create_timer(1 / (speed)).timeout
	
	done.emit()
		


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select"):
		speed_mult *= 5
