extends Level

var ultimatum_final = DialogNode.new("Agni: If you can’t handle who I am, maybe you shouldn’t be with me.", null, null, 
	func(player):
		player.hearts -=1
		explode("💔")
)
var ultimatum_2 = DialogNode.new("They shake their head, their voice growing sharper.", ultimatum_final)
var ultimatum_1 = DialogNode.new("Agni: A deal-breaker? You’re really throwing that at me now? I don’t think you get what it’s like for me. I’m not some calm, collected person who can just switch off their fire.", ultimatum_2)
var ultimatum = DialogNode.new("$name: If you can’t make that change, then I don’t think I can continue this relationship", ultimatum_1)

var try_start_final = DialogNode.new("Agni: Look, I get it. I know I’m not exactly the model of restraint, but... for you, I’ll try. I don’t want to mess this up.", null, null, 
	func(player): add_heart(player)
)
var try_start_3 = DialogNode.new("They’re quiet for a moment, staring back up at the stars, before sighing.", try_start_final)
var try_start_2 = DialogNode.new("Agni: Changes, huh? You think I’m just burning through everything without a second thought?", try_start_3)
var try_start_1 = DialogNode.new("Agni’s gaze sharpens for a moment, and you can see the flames of their temper flicker behind their eyes. But then they take a breath, their expression softening as they process what you’ve said.", try_start_2)
var try_start = DialogNode.new("$name: I’m not asking for perfection, but I need to know if you’re willing to make changes.", try_start_1)

var confession_prompt = Choose2.new("$name: I care about you, Agni. A lot. But... I can’t pretend that this doesn’t matter to me. The planet, sustainability—living in a way that doesn’t make everything worse. 
I need to be with someone who cares about that too. I need to know if you can commit to that.", try_start, "Don't demand change now.", ultimatum, "Set an ultimatum.")
var confession_9 = DialogNode.new("Agni’s eyes flicker with a brief flash of fire, but they stay quiet, letting you continue.", confession_prompt)
var confession_8 = DialogNode.new("$name: I’ve been thinking a lot about where this—us—is going. And there’s something important I need to talk to you about.", confession_9)
var confession_7 = DialogNode.new("You sit up shifting slightly to face Agni. You can feel their eyes on you, glowing like embers in the dark, waiting. You take a deep breath, trying to steady yourself before speaking.", confession_8)
var confession_6 = DialogNode.new("A meteor shoots across the sky. It’s the perfect time.", confession_7)
var confession_5 = DialogNode.new("Agni: I’m glad I gave you a chance too, but you look a little tense. What’s bouncing around in that head of yours?", confession_6)
var confession_4 = DialogNode.new("Agni takes their gaze away from the stars to look at you. They can tell you want to talk about something serious.", confession_5)
var confession_3 = DialogNode.new("$name: Agni, I’m really glad you gave me a chance after the trail.", confession_4)
var confession_2 = DialogNode.new("Agni is sitting close to you, your shoulders’ touching as you both cuddle under a blanket. Every now and then, Agni will point at a cluster of stars and try to come up with a story for them. Every laugh they bring out of you only reminds you of how difficult your confession will be.", confession_3, AGNI)
var confession_1 = DialogNode.new("You have invited Agni on a stargazing date in a forest to watch a meteor shower! Remember, tread carefully, if they don’t choose to live sustainably after this confession, it may be impossible to ever control the fire damage they can cause.", confession_2)
var confession_start = DialogNode.new("It has been a couple of dates since the picnic date and the both of you have gotten a lot closer. It’s enough for you to feel like it’s time to confess to Agni, and see if they’re willing to be sustainable with you.", confession_1)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.tree = confession_start
	self.player = player
	super._ready() 
