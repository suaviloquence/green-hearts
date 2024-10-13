extends Level

var bad_ending_final = DialogNode.new("**BREAKING NEWS: HOUSES ALONG THE COAST DESTROYED DUE TO FLASH FLOOD**", null)
var bad_ending_6 = DialogNode.new("You can only watch as the tide rushes towards you. You failed.", bad_ending_final)
var bad_ending_5 = DialogNode.new("He walks away as the ocean tide gets higher and higher. The lifeguard on the beach is yelling in her megaphone to run, that something isn’t right. That this is unnatural.", bad_ending_6)
var bad_ending_4 = DialogNode.new("Nile: You’re just like the others. Just want to convert me for your own purpose. I’m done.", bad_ending_5, null, func(_p): $TextureRect.texture = preload("res://tsunami.jpg"))
var bad_ending_3 = DialogNode.new("You can’t say a word. He figured out your mission himself. He notices your silence, and sighs.", bad_ending_4)
var bad_ending_2 = DialogNode.new("He takes a pause, before his expression turns angry.
Nile: Wait, every time we were together, you mentioned sustainability. Why did you mention it so much? Were you pushing that agenda on me?", bad_ending_3)
var bad_ending_1 = DialogNode.new("Nile: As much as I like you $name, I’m sorry. I don’t think I can do this. Maybe we’re just too different.", bad_ending_2)
var bad_ending_start = DialogNode.new("Nile stands up, looking towards the ocean. He doesn’t look down at you at all. His tone is distant, and the playful warmth from earlier has vanished.", bad_ending_1)

var good_ending_final = DialogNode.new("Fin.", null)
var good_ending_4 = DialogNode.new("You both sit back down and continue to watch the sunset, holding hands as the tide seems calmer than ever.", good_ending_final)
var good_ending_3 = DialogNode.new("Nile: $name, I’m not passing you up for anything.", good_ending_4)
var good_ending_2 = DialogNode.new("$name: Of course, I’m glad that you’re willing to make this work. It means a lot to me.", good_ending_3)
var good_ending_1 = DialogNode.new("Nile: “You’re right. I  want this to work, and I’m willing to learn. Maybe you can teach me more about sustainability over time?", good_ending_2)
var good_ending_start = DialogNode.new("Nile stands up, and then reaches a hand out to you. He pulls you into a warm embrace, voice soft.", good_ending_1)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if player.hearts >= 3:
		self.tree = good_ending_start
	else:
		self.tree = bad_ending_start # Replace with function body.
	super._ready()
