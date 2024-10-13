extends Level

@export var mistakes: int
@export var time_left: int

var no_heart_3 = DialogNode.new("Agni is not being persuaded at all to clean the environment. Uhm… that’s not good.", null)
var no_heart_2 = DialogNode.new("Agni: I don’t know, if you’re getting nervous over sorting trash, it seems like more effort than it’s worth.", no_heart_3)
var no_heart_1 = DialogNode.new("$name: No! I was just nervous cause you were watching, okay?", no_heart_2)
var no_heart_start = DialogNode.new("Agni: . . . so is it normally that hard?", no_heart_1)

var two_hearts_3 = DialogNode.new("Agni definitely seems more receptive to the idea of cleaning the environment than before.", null, null, func(player): add_heart(player))
var two_hearts_2 = DialogNode.new("Agni: Yeah I’m teasing you, that was pretty easy. Huh.", two_hearts_3)
var two_hearts_1 = DialogNode.new("$name: Hey! I’ll get faster with time, but wasn’t that easy?", two_hearts_2)
var two_hearts_start = DialogNode.new("Agni: Huh, that wasn’t that bad. Though you were kind of slow.", two_hearts_1)

var three_hearts_2 = DialogNode.new("	Agni looks at you in admiration, and looks back at the bins. They seem to like the idea that cleaning the environment isn’t hard!", null, null, func(player): add_heart(player))
var three_hearts_1 = DialogNode.new("$name: You get the hang of it once you build up the habit. I’m pretty sure you’ll get good at it too once you build the habit!", three_hearts_2)
var three_hearts_start = DialogNode.new("Agni: That was really easy and fast, you’re really good at this.", three_hearts_1)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.player = player
	
	if (mistakes <= 6) && (time_left >= 10):
		self.tree = three_hearts_start
	elif  (mistakes <= 6):
		self.tree = two_hearts_start
	else:
		self.tree = no_heart_start
	
	super._ready()
