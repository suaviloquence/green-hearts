extends Level

@export var sustainability: int
@export var taste: int

var three_hearts_final = DialogNode.new("Score!!!", null)
var three_hearts_3 = DialogNode.new("Nile: You know $name, I think you got me here. This is definitely worth going sustainable over. Thank you for inviting me over <3", three_hearts_final)
var three_hearts_2 = DialogNode.new("You both take a bite, and wow, it actually tastes better than you thought it would.", three_hearts_3)
var three_hearts_1 = DialogNode.new("$name: Yes! Isn’t that crazy?", three_hearts_2)
var three_hearts_start = DialogNode.new("Nile: Wow, this looks absolutely amazing. You said these ingredients are mostly sustainable?",
										three_hearts_1)

var two_hearts_final = DialogNode.new("Nile: It tastes so good! I’m glad I could make this with you, you are swaying me to your side $name.", null)
var two_hearts_2 = DialogNode.new("You both take a bite, and while it could’ve tasted better, it still tastes delicious.", two_hearts_final)
var two_hearts_1 = DialogNode.new("$name: Right? And with some of the ingredients being locally sourced, it’ll make it taste even better.", two_hearts_2)
var two_hearts_start = DialogNode.new("Nile: This looks good! Better than something I could cook on my own.", two_hearts_1)

var one_hearts_final = DialogNode.new("Nile: It tastes good! I’m glad I could make this with you $name. But I’m going to be real with you, I think we could’ve made this 10x better if we weren’t watching out for sustainable food.", null)
var one_hearts_2 = DialogNode.new("You both take a bite, and it tastes just okay. You probably could’ve made this a lot better. ", one_hearts_final)
var one_hearts_1 = DialogNode.new("$name: Right? And with some of the ingredients being locally sourced, it’ll make it taste even better.", one_hearts_2)
var one_hearts_start = DialogNode.new("Nile: This looks good! Better than something I could cook on my own.", one_hearts_1)

var no_hearts_final = DialogNode.new("Nile laughs out loud, but goes back for a second bite. 
Nile: I’m going to continue eating this because we made it together, but I’m definitely sticking to my regular diet.", null)
var no_hearts_3 = DialogNode.new("$name: Maybe we had too much fun instead of making this taste good...", no_hearts_final)
var no_hearts_2 = DialogNode.new("You both take a bite. And wow, this is definitely not how you make a shrimp scampi. You look up and see Nile trying to hide his expression.", no_hearts_3)
var no_hearts_1 = DialogNode.new("$name: Erm... yeah let’s just hope it doesn’t taste as bad as it looks.", no_hearts_2)
var no_hearts_start = DialogNode.new("Nile: So… This doesn’t look that amazing if I’m going to be so real with you.", no_hearts_1)

var post_game_final = DialogNode.new("Finally, the shrimp scampi  on linguine is ready, and Nile helps you set the table as you find a pretty vase to put the orchids in.", null)

var post_game_5 = DialogNode.new("***You both get immersed in the cooking, but conversation never stops as you continue learning about each other’s lives. Of course, you don’t tell him about your mission***", post_game_final)
var post_game_4 = DialogNode.new("Nile blushes as he steps inside, but then he looks up at you with glee. He’s excited to cook with you.", post_game_5)
var post_game_3 = DialogNode.new("They’re a bundle of orchids, and perfect for your dining table!
$name: They’re beautiful, thank you so much Nile! I have the kitchen prepped, shame you wore such a nice outfit for a cooking date.", post_game_4)
var post_game_2 = DialogNode.new("Nile: Hi $name! I got you flowers, I hope you like them!", post_game_3)
var post_game_1 = DialogNode.new("Nile is rocking on his heels a bit with his hands behind his back, looking all around your front porch.Once you open the door, he stumbles for a second before giving you a big, warm smile.", post_game_2)
var post_game_start = DialogNode.new("Just as you finish setting up the kitchen, you hear a knock on the door. Brushing your hands and fixing your hair slightly, you look through the peephole.", post_game_1)

#make sure to add if-elif-elif-else statement 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.tree = post_game_start
	super._ready() # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
