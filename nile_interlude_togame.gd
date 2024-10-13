extends Level
var instructions2 = DialogNode.new("Do your best to maximize on taste and sustainability, otherwise Nile will not be moved! If you purchase every ingredient before the time limit, click Done! in the bottom right corner.", null)
var instructions = DialogNode.new("TO PLAY: Click on item to see details, click again to purchase it. If you already have an item,
double click on it to put it back. Click the side arrows to navigate between the shelves.", instructions2)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.tree = DialogNode.new("It's time to go shopping for your cooking date with Nile!  You decide to make shrimp scampi on linguine.", instructions)
	super._ready()
