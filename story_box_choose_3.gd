extends StoryBox

signal chose(item: int)


func _on_done() -> void:
	($Area2D/TextureRect/MarginContainer as MarginContainer).add_theme_constant_override("margin_right", 384)
	$Area2D/Options.show()

func _on_option_1_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select"):
		chose.emit(1)

func _on_option_2_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select"):
		chose.emit(2)
		
func _on_option_3_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select"):
		chose.emit(3)
