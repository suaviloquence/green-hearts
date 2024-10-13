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

func _ready() -> void:
	$TextureRect.texture = texture

var selected := false

func _process(delta: float) -> void:
	if selected:
		global_position = get_global_mouse_position()

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select"):
		selected = true
	elif event.is_action_released("select"):
		selected = false
		dropped.emit()
