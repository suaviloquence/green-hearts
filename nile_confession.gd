extends Level


var ultimatum_final = DialogNode.new("Nile frowns, a little shocked by your statement.
An ultimatum, huh? I get that this matters to you, but I don’t know if I can just flip a switch like that. I don’t like being told how to live my life, even if your reasons are good.", null, null, 
	func(player):
		player.hearts -= 1
		explode("💔")
)
var ultimatum_start = DialogNode.new("$name: If you can’t make that change, then I don’t think I can continue this relationship", ultimatum_final)



var try_end = DialogNode.new("Nile: I… I get it. I’ve never really thought about this stuff like you do, but I can see how much it means to you. If it’s that important to you, then yeah—I’ll try. I’m not making any promises to go zero waste tomorrow, but I’ll give it a shot.", null)
var try_start = DialogNode.new("$name: I don’t expect you to change everything overnight. But I need to know that you’re willing to try.", try_end)

#need to make the choices
var confession_5 = Choose2.new("$name: Nile, I really like you. But there’s something I need to tell you. Sustainability isn’t just something I care about—it’s a core part of who I am. I want to build something real between us, 
but... I don’t think I can keep going if we’re not aligned on this. I need to know that you care about this planet as much as I do.", 
try_start, "Don't demand change now", ultimatum_start, "Set an ultimatum")
var confession_4 = DialogNode.new("The sun is starting to set, painting the sky with watercolors of orange and pink. It’s the perfect time to confess.", confession_5)
var confession_3 = DialogNode.new("Nile looks at you with a soft gaze. 
Nile: I feel the same with you. It’s like everything around me disappears when I’m with you.", confession_4)
var confession_2 = DialogNode.new("$name: I really enjoy my time with you Nile, I feel so calm and free.", confession_3, NILE)
var confession_1 = DialogNode.new("You and Nile are sitting close to each other on the beach, hands almost touching. After a fun day running around the beach together, the atmosphere got tense. It’s like Nile is also anticipating a serious conversation.", confession_2)
var confession_intro = DialogNode.new("It has been a couple of dates since the cooking one. It’s enough for you to feel like it’s time to confess to Nile, 
and see if he’s willing to be sustainable with you. You have invited him on a beach date, with a little romantic picnic! 
Remember, tread carefully, if he doesn’t choose to live sustainably after this confession, it may be impossible to ever control the water damage he can cause. ", confession_1)

var ending = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.tree = confession_1
	super._ready()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
