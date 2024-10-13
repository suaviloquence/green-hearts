extends Node2D

@export var emoji: String

var thangs := []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(0, 360, 10):
		var lbl := Label.new()
		lbl.text = emoji
		thangs.push_back([lbl, Vector2.from_angle(deg_to_rad(i)) * 3])
		add_child(lbl)

func _process(delta: float) -> void:
	var new_thangs := []
	for thang in thangs:
		var lbl: Label = thang[0]
		var speed: Vector2 = thang[1]
		lbl.position += speed
		speed *= (1 + delta)
		lbl.scale *= Vector2.ONE * (1 + 1.5 * delta)
		if !get_viewport_rect().has_point(lbl.global_position):
			lbl.queue_free()
		else:
			new_thangs.push_back([lbl, speed])
	
	if len(new_thangs) == 0:
		self.queue_free()
	
	thangs = new_thangs
