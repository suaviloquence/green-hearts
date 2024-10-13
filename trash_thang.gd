class_name TrashThang
extends Area2D

signal dropped

enum Kind {
	Trash,
	Recycling,
	Compost,
}

@export var kind: Kind
@export var texture: Texture

var try_lock: Callable

func _ready() -> void:
	$TextureRect.texture = texture

var selected := false

func _process(delta: float) -> void:
	if selected:
		global_position = get_global_mouse_position()

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select"):
		if try_lock.call():
			selected = true
	elif event.is_action_released("select"):
		if selected:
			selected = false
			dropped.emit()
