extends Level

#all the text
var background1 = "You walk up to the beautiful outdoor pool that HQ sent you to. 
The sound of water splashing, soft music, and distant laughter fills the air. 
It’s busy here, but you can tell why your target frequents this place often. "

var background2 = "Nile is swimming in the pool, doing laps around like he’s a professional. 
You watch him, mesmerized by his even strokes. He pauses at one end of the pool to get out and 
grab a pool noodle for the kid struggling in the water, and oh, his back is incredible."

var first_choice_prompt = "Don’t get distracted! How do you approach him?"

#storyline for getting in the pool 
var get_in_pool = "You get in the pool, wading through until you are close to where Nile is doing his laps. 
It’s like he senses you coming over, as he slows to a stop in the middle of the pool. "
var pool_approach = "$name : Hey! I noticed you doing laps, you’re really good!"
var pool_approach2 = "Nile blushes a little as he looks away from you, as if he’s not used to hearing a compliment like that."
var do_you_swim = "Nile: Thanks! I used to be part of a team, but now I just swim to relax. Do you swim?"

var yes_swim = "Yes! Not as good as you, but I like the water too"
var yes_swim_1 = "Nile: I’d love to swim with you, I’ve been meaning to find a swimming partner. What’s your name?"
var yes_swim_2 = "$name: $name, and you?"
var yes_swim_3 = "Nile: I’m Nile! Hold on, let’s get out of the pool so I can give you my number."
var no_swim = "Not really, but seeing you swim inspires me to try."
var no_swim_1 = "Nile blushes again, but this time keeps eye contact with you."
var no_swim_2 = "Nile: Oh really? I’m down to teach you, I think it would be really fun with you!"
var no_swim_3 = "He has a huge grin on, and you match his smile."
var no_swim_4 = "Nile: I’m Nile by the way, what’s your name?"
var no_swim_5 = "$name: $name!"
var no_swim_6 = "Nile: $name… cute name! Want to get out of the pool with me?"

var pool_approach3 = "You both get out of the pool, and make your way over to his lounge chair with his towel."
var pool_approach4 = "Nile: Do you not have a towel? Here, use mine."
#end of storyline for getting in the pool

#start of storyline for waiting outside the pool
var wait_for_nile = "You find a lounge chair to wait in and continue observing Nile from where you are. 
It’s a good ten minutes later before he stops at an end and looks up at the chairs. He catches your gaze, 
and looks away with a smile, almost like he’s shy that he caught you looking."

var approach_later1 = "As Nile finally finishes another set of laps, he hauls himself out of the pool, water cascading off his toned body. 
He shakes his head, droplets of water flying from his hair as he grabs a towel. 
Your breath catches, but you quickly refocus—you’re here on a mission."
var approach_later2 = "He dries off a bit and begins walking in your direction, still distracted, squeezing water from his hair. 
As he passes, you clear your throat, just enough to catch his attention."
var flirty_nile = "Nile: Hey! Didn’t see you there, enjoying the view? 
He winks, clearly interested."

var flirt_back = "$name: Yeah, the pool looks great… but you don’t look too bad yourself."
var flirt_back1 = "Nile blushes, not expecting that bold of a response. But he recovers quickly.
	Nile: Careful, or I might start charging for that kind of compliment."
var flirt_back2 = "You laugh, and he laughs back, and the energy is synced. He reaches his hand out, and as you place your hand in his, he kisses your hand."
var flirt_back3 = "Nile: I’m Nile, what’s your name?"
var flirt_back4 = "$name: I'm $name !"
var flirt_back5 = "Nile: Lovely name $name, let me get to know you baby"

var stay_humble = "$name: Yeah, I’ve spent a lot of time here. Something about being in the water just makes everything better, you know? 
It’s like... no matter what’s going on, the water always knows how to calm things down."
var stay_humble1 = "Nile turns back to you, his expression softening."
var stay_humble2 = "Nile: I’ve felt like that too, like I can just let everything go when I’m near it."
var stay_humble3 = "There’s silence after as you both sit in those words."
var stay_humble4 = "Nile: I’m Nile by the way, I usually never get this deep with a first conversation."
var stay_humble5 = "His smile is kind, and it makes you smile back."
var stay_humble6 = "$name: $name! I started it, if anything I think you made me feel better about getting personal so quick."

#end of storyline for waiting outside

var merged_choice = "You both chat for a long time, and as the sun starts setting, you realize you still don’t know anything about Nile’s habits. 
You have each other's numbers now, but you need to step it up. All you have done is flirt with the guy!"

var ask_habits = "$name: So …as a post-super successful professional, what do your meals look like?"
var ask_habits1 = "Nile: I try to stay pretty healthy, but I haven’t been paying too much attention to what I eat. 
It’s been a lot of meat to try and bulk up. What about you?"
var ask_habits2 = "$name: I have been trying to get more healthy! 
I’ve also been trying to be more sustainable, because I’m passionate about the environment."
var ask_habits3 = "Nile: Oh? So what does that entail?"
var ask_habits4 = "$name: It’s like buying food locally instead of mass-produced. More organic foods, which are healthier for you 
anyways, and eating less meat since meat production is linked to increase in greenhouse emissions and excess water usage."
var ask_habits5 = "Nile: Hmm, and why is that important?"
var ask_habits6 = "$name: You love the ocean right? Buying sustainable local foods means protecting the oceans you love—helping to reduce pollution and overfishing, which keeps our waters healthy for future generations."
var ask_habits7 = "Nile: Huh, I never thought about it that way."
var ask_habits8 = "He ponders, and then he looks back at you. 
Nile: I think I’ll try it out, I can’t believe I didn’t know this."
var ask_habits9 = "Score!!!!"

var bring_up = "$name: I’ve been trying to get more into eating sustainable food, what do you think about it?"
var bring_up1 = "Nile: Hmm, not much? I don’t really get it to be honest."
var bring_up2 = "$name: I’ve been trying to find someone to eat sustainable with, cause I heard it has a lot of benefits not 
only for the environment but our body too."
var bring_up3 = "Nile: Ah, what type of benefits?"
var bring_up4 = "$name: Buying more local, organic foods are less unknown pesticides and stuff going in your body. 
Eating less meat is tough but reducing the amount of pollution it causes will not only keep the Earth healthy, 
but the oceans that we love clean as well."
var bring_up5 = "Nile: That’s a good reason, I think I’m going to need time to think about it more though, 
I’ve been pretty consistent with my diet and changes like this are difficult to do for someone I just met, Sorry babe."

var do_nothing = "You both keep talking, but as you continue, the interaction stays very surface-level. It definitely never turns awkward though!"

var merged = "$name: Why don’t you come over to my place sometime this week? I’d love to make you a meal!"
var merged1 = "Nile: I’d love to! Let me text you when I’m free, it better be a really tasty meal $name"
var merged2 = "$name: I’d never disappoint a man like you, don't worry handsome."
var merged3 = "You both arrange a date, and part ways as the sun sets in front of the pool. Meet-cute with Nile was a success!"

#building tree

#merged decisions
var mergedfinal = DialogNode.new(merged3, null)
var merged23 = DialogNode.new(merged2, mergedfinal)
var merged12 = DialogNode.new(merged1, merged23)
var mergedstart = DialogNode.new(merged, merged12)

var bring_upfinal = DialogNode.new(bring_up5, mergedstart)
var bring_up45 = DialogNode.new(bring_up4, bring_upfinal)
var bring_up34 = DialogNode.new(bring_up3, bring_up45)
var bring_up23 = DialogNode.new(bring_up2, bring_up34)
var bring_up12 = DialogNode.new(bring_up1, bring_up23)
var bring_upstart = DialogNode.new(bring_up, bring_up12)

var ask_habitsfinal = DialogNode.new(ask_habits9, mergedstart, null, add_heart)
var ask_habits89 = DialogNode.new(ask_habits8, ask_habitsfinal)
var ask_habits78 = DialogNode.new(ask_habits7, ask_habits89)
var ask_habits67 = DialogNode.new(ask_habits6, ask_habits78)
var ask_habits56 = DialogNode.new(ask_habits5, ask_habits67)
var ask_habits45 = DialogNode.new(ask_habits4, ask_habits56)
var ask_habits34 = DialogNode.new(ask_habits3, ask_habits45)
var ask_habits23 = DialogNode.new(ask_habits2, ask_habits34)
var ask_habits12 = DialogNode.new(ask_habits1, ask_habits23)
var ask_habitsstart = DialogNode.new(ask_habits, ask_habits12)

var do_nothing_node = DialogNode.new(do_nothing, mergedstart)

#INSERT THE CHOOSE3 FOR THIS 
var sustainable_choice = Choose3.new(merged_choice, ask_habitsstart, "Ask about his eating habits!", bring_upstart, "Bring up the topic of sustainability", do_nothing_node, "Do nothing, don't make it awkward")

#before merge choices
var stay_humblefinal = DialogNode.new(stay_humble6, sustainable_choice, null, add_heart)
var stay_humble56 = DialogNode.new(stay_humble5, stay_humblefinal)
var stay_humble45 = DialogNode.new(stay_humble4, stay_humble56)
var stay_humble34 = DialogNode.new(stay_humble3, stay_humble45)
var stay_humble23 = DialogNode.new(stay_humble2, stay_humble34)
var stay_humble12 = DialogNode.new(stay_humble1, stay_humble23)
var stay_humblestart = DialogNode.new(stay_humble, stay_humble12)

var flirt_backfinal = DialogNode.new(flirt_back5, sustainable_choice)
var flirt_back45 = DialogNode.new(flirt_back4, flirt_backfinal)
var flirt_back34 = DialogNode.new(flirt_back3, flirt_back45)
var flirt_back23 = DialogNode.new(flirt_back2, flirt_back34)
var flirt_back12 = DialogNode.new(flirt_back1, flirt_back23)
var flirt_backstart = DialogNode.new(flirt_back, flirt_back12)

var flirt_or_humble = Choose2.new(flirty_nile, flirt_backstart, "Flirt back with Nile!", stay_humblestart, "Stay humble.")

var approach_final = DialogNode.new(approach_later2, flirt_or_humble)
var approach_later12 = DialogNode.new(approach_later1, approach_final)
var approach_start = DialogNode.new(wait_for_nile, approach_later12)

var poolfinal = DialogNode.new(pool_approach4, sustainable_choice)
var pool34 = DialogNode.new(pool_approach3, poolfinal)

var no_swimfinal = DialogNode.new(no_swim_6, pool34)
var no_swim_56 = DialogNode.new(no_swim_5, no_swimfinal)
var no_swim_45 = DialogNode.new(no_swim_4, no_swim_56)
var no_swim_34 = DialogNode.new(no_swim_3, no_swim_45)
var no_swim_23 = DialogNode.new(no_swim_2, no_swim_34)
var no_swim_12 = DialogNode.new(no_swim_1, no_swim_23)
var no_swimstart = DialogNode.new(no_swim, no_swim_12)

var yes_swimfinal = DialogNode.new(yes_swim_3, pool34)
var yes_swim_23 = DialogNode.new(yes_swim_2, yes_swimfinal)
var yes_swim_12 = DialogNode.new(yes_swim_1, yes_swim_23)
var yes_swimstart = DialogNode.new(yes_swim, yes_swim_12)

var pool_choice = Choose2.new(do_you_swim, yes_swimstart, "Yes I do!", no_swimstart, "No, I don't.")
var pool23 = DialogNode.new(pool_approach2, pool_choice)
var pool12 = DialogNode.new(pool_approach, pool23)
var poolstart = DialogNode.new(get_in_pool, pool12)

var first_choice = Choose2.new(first_choice_prompt, poolstart, "Don't wait, get in the pool!", approach_start, "Wait for him to finish, then go for it!")
var background12 = DialogNode.new(background2, first_choice)
var backgroundstart = DialogNode.new(background1, background12, preload("res://NILE.png"),
	func(_p):
		explode(":)")
)

func _ready() -> void:
	tree = backgroundstart
	super._ready()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
