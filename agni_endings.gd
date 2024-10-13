extends Level

var bad_ending_final = DialogNode.new("**BREAKING NEWS: FOREST UP IN FLAMES DUE TO UNCONTROLLED WILDFIRE**", null)
var bad_ending_7 = DialogNode.new("As you turn around, you see that in the direction Agni left in, fires consume the trees near you. And they keep moving towards you. You failed your mission.", bad_ending_final, null, func(_p): $TextureRect.texture = preload("res://forest_fire.jpg"))
var bad_ending_6 = DialogNode.new("Agni leaves you behind, walking way too calmly for someone who blew up at you. As you glance back at the clear sky, you smell smoke.
Too much smoke.", bad_ending_7, RESET)
var bad_ending_5 = DialogNode.new("Agni: I can’t believe I thought this was real. I’ll get you back for this, $name.", bad_ending_6)
var bad_ending_4 = DialogNode.new("They stand up straight. Something settles over them, and it unsettles you.", bad_ending_5)
var bad_ending_3 = DialogNode.new("Agni: This was a set-up wasn’t it? Someone sent you to meet me and do all of this.", bad_ending_4)
var bad_ending_2 = DialogNode.new("And then, they stop all of a sudden. As another meteor soars above, they look back at you, eyes glowering.", bad_ending_3)
var bad_ending_1 = DialogNode.new("Agni: You know what? We’re too different for this. Why did you even approach me on the hiking trail?", bad_ending_2)
var bad_ending_start = DialogNode.new("Agni stands up in a hurry, and starts pacing a bit. You continue to sit, not knowing what to do.", bad_ending_1, AGNI)

var good_ending_final = DialogNode.new("You reach out to hold their hand, and Agni interlocks your fingers. You smile together, and if you both accidentally fall asleep next to each other from watching the meteor shower, then no one has to know but you two.", null)
var good_ending_5 = DialogNode.new("Agni: Yeah... okay. I can try that. I don’t want to lose you either.", good_ending_final)
var good_ending_4 = DialogNode.new("Agni lets out a long breath, their fiery energy settling down as they look at you, calmer now.", good_ending_5)
var good_ending_3 = DialogNode.new("$name: I’m not asking you to change who you are, just to think about the future. About a better future together.", good_ending_4)
var good_ending_2 = DialogNode.new("Agni: I didn’t mean to snap. It’s just... not easy for me. But I don’t want to lose you over this.", good_ending_3)
var good_ending_1 = DialogNode.new("The air between you is tense, but you can see that they’re still thinking. They run a hand through their short hair, staring up at the stars as they try to cool off.", good_ending_2)
var good_ending_start = DialogNode.new("You both sit in silence. You don’t want to disrupt Agni’s thoughts, and Agni seems to want a minute to themself.", good_ending_1, AGNI)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if player.hearts >= 3:
		self.tree = good_ending_start 
	else:
		self.tree = bad_ending_start
	super._ready()
