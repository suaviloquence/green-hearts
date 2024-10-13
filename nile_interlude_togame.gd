extends Level
var instructions2 = DialogNode.new("Do your best to maximize on taste and sustainability, otherwise Nile will not be moved! If you purchase every ingredient before the time limit, click Done! in the bottom right corner.", null)
var instructions = DialogNode.new("TO PLAY: Click on item to see details, click again to purchase it. If you already have an item,
double click on it to put it back. Click the side arrows to navigate between the shelves.", instructions2)
var warning = DialogNode.new("Remember, tread carefully, if he doesn’t choose to live sustainably after this confession, it may be impossible to ever control the water damage he can cause.", instructions)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.tree = DialogNode.new("It has been a couple of dates since the cooking one. It’s enough for you to feel like it’s time to confess to Nile, and see if he’s willing to be sustainable with you. 
	You have invited him on a beach date, with a little romantic picnic!", warning) # Replace with function body.
	super._ready()
