extends StoryBox

signal really_done

func _ready() -> void:
	super._ready()
	$Area2D/Continue.hide()

func _on_done() -> void:
	$Area2D/Continue.show()


func _on_continue_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select"):
		really_done.emit()
