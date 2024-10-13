extends Level


func _ready() -> void:
	tree = DialogNode.new(
		"Help impress Agni by sorting the waste correctly",
		DialogNode.new(
			"Remember that compostable utensils and dishes go in the compost,
Clean bottles and jars in the recycling,
and plastic chip bags in the trash.",
			DialogNode.new(
				"Click and each item to the bin it belongs in.
Make sure to be correct, but be careful of the time limit.",
				Terminus.new(),
			)
		)
	)
	super._ready()
