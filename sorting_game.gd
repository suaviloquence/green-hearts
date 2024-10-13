extends Node2D

signal end (bad: int)

@onready var kind_map := {
	TrashThang.Kind.Trash: $Trash,
	TrashThang.Kind.Recycling: $Recycling,
	TrashThang.Kind.Compost: $Compost,
}



var bad := 0

var time := 45.

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$TextureRect/Label.text = "%d secs" % [ceili(time)]
	var num := 0
	for child in get_children():
		if child is TrashThang:
			child.try_lock = try_lock.bind(child)
			child.dropped.connect(self.drop_handler.bind(child))
			
			child.position = Vector2(randi_range(64, 768 - 64), randi_range(256, 512 - 64))
			num += 1


func try_lock(child: TrashThang) -> bool:
	for c in get_children():
		if c is TrashThang and c != child and c.selected: return false
	return true


func _process(delta: float) -> void:
	time -= delta
	
	if ceili(time) != ceili(time + delta):
		$TextureRect/Label.text = "%d secs" % [ceili(time)]

		if not get_children().any(func(x): return x is TrashThang):
			self.end.emit(bad)
			print(bad)
			self.queue_free()
	
	if time <= 0:
		for chd in get_children():
			if chd is TrashThang:
				bad += 1
		end.emit(bad)
		print(bad)
		self.queue_free()
	


func drop_handler(child: TrashThang):
	for kind in kind_map:
		var bin: Area2D = kind_map[kind]
		if bin.get_overlapping_areas().has(child):
			if child.kind != kind:
				bad += 1
			child.queue_free()
