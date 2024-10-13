extends Level


var trail_end_final = DialogNode.new("Agni walks away once you hand their phone back, and you look back at the view. Meet-cute with Agni was a success!", null)
var trail_end_5 = DialogNode.new("They let out a shy smile as they hand over their phone. 
Agni: I’ll be waiting for your text, see you later $name.", trail_end_final)
var trail_end_4 = DialogNode.new("$name: Well, I’m not some people. Let me get to know you Agni.", trail_end_5)
var trail_end_3 = DialogNode.new("Agni: Ah yeah… are you sure? Some people say that I can be a lot to handle.", trail_end_4)
var trail_end_2 = DialogNode.new("$name: Agni, I really want to get to know you more. Can I get your number?", trail_end_3)
var trail_end_1 = DialogNode.new("After recycling the bottles, you both reach the top. The view is beautiful, very much worth the trek. 
You glance back at Agni, their soft fiery hair blows in the wind, and when they look back at you, their hazel eyes glow.", trail_end_2)

var ask_help_6 = DialogNode.new("When you guys begin walking again, there is more space than before.", trail_end_1)
var ask_help_5 = DialogNode.new("$name: No, what? It’s okay, I can do this myself I guess.", ask_help_6)
var ask_help_4 = DialogNode.new("Agni: …are you some type of propagandist or something? Why are you talking like that?", ask_help_5)
var ask_help_3 = DialogNode.new("Agni’s face screws up, and their walls go back up. Uh oh.", ask_help_4)
var ask_help_2 = DialogNode.new("$name: It’s going to help the environment, isn’t that a good thing?", ask_help_3)
var ask_help_1 = DialogNode.new("Agni looks back at you in confusion. 
Agni: Um… why?", ask_help_2)
var ask_help_start = DialogNode.new("$name: Hey Agni, help me pick these bottles up.", ask_help_1)

var do_self_6 = DialogNode.new("Agni: Yeah, hm. You’re right.", trail_end_1, null, add_heart)
var do_self_5 = DialogNode.new("$name: If I can, yeah! It’s better to help clean our environment then hope it goes away on its own, right?", do_self_6)
var do_self_4 = DialogNode.new("Agni: So, do you often pick up trash on the side of trails?", do_self_5)
var do_self_3 = DialogNode.new("You smile again at them in gratitude, and they smile back. After you hand some over, you both continue to walk.", do_self_4)
var do_self_2 = DialogNode.new("Agni: I can hold some for you, it’s okay.", do_self_3)
var do_self_1 = DialogNode.new("Agni waits as you pick up the bottles. After seeing you struggle a bit, they walk over to you and hold out their hands", do_self_2)
var do_self_start = DialogNode.new("$name: Agni wait a minute, I’m going to pick these up.", do_self_1)
var merged_choice = Choose2.new("You both walk further along the trail, silently taking in the nature around you. You notice a couple plastic water bottles littered on the ground. Agni looks like they’re about to walk by them, but you want to prompt them to pick it up.", do_self_start, "Do it yourself", ask_help_start, "Prompt Agni to help you")

var offer_8 = DialogNode.new("Agni: Yeah, let’s do it.", merged_choice)
var offer_7 = DialogNode.new("$name: I’m $name! Do you want to continue up together?", offer_8)
var offer_6 = DialogNode.new("Agni silently observes you, and the tension in their shoulder seems to drop after a second.
Agni: I agree, it’s very calming. …I’m Agni by the way.", offer_7)
var offer_5 = DialogNode.new("$name: No, just taking in the views. I really appreciate the landscape.", offer_6)
var offer_4 = DialogNode.new("Agni: ...Did you need anything?", offer_5)
var offer_3 = DialogNode.new("They look back at the view, but when you don’t move, they look back at you.", offer_4)
var offer_2 = DialogNode.new("Agni looks back at you, very suspicious of you. 
Agni: Um, no thanks...", offer_3)
var offer_1 = DialogNode.new("$name: Excuse me, you look like you might need some water.", offer_2)
var offer = DialogNode.new("You walk up to them while taking your water out. Once you are next to them, you clear your throat.", offer_1)

var comment_5 = DialogNode.new("Agni is a bit apprehensive, but your smile seems to let them relax a bit.
Agni: I’m Agni… Staring at nature just calms me down, I don’t know. We can keep going though.", merged_choice)
var comment_4 = DialogNode.new("$name: Oh sorry, I’m $name! I was curious about what you were doing out here.", comment_5)
var comment_3 = DialogNode.new("Agni: Sorry, but who are you?", comment_4)
var comment_2 = DialogNode.new("You both stand in silence for a bit before Agni gets a bit fidgety.", comment_3)
var comment_1 = DialogNode.new("Agni startles and glances at you before looking back out.
Agni: Ah yeah it is…", comment_2)
var comment = DialogNode.new("You take a deep breath before you walk up to them.
$name: Beautiful views, right?", comment_1)



var approach_prompt = Choose2.new("How do you approach them?", comment, "Comment on the environment", offer, "Offer your water")
var background_2 = DialogNode.new("Their short, fiery red hair catches the sunlight, a vivid contrast against the green landscape. There’s something magnetic about the way they stand—relaxed but alert, like they’re always on the edge of action. You recognize them instantly: Agni, your target.", approach_prompt, AGNI)
var background_1 = DialogNode.new("The trail ahead curves sharply, leading to an overlook where the treetops stretch out beneath the horizon. As you round the bend, you spot someone standing alone at the edge, gazing out at the view.", background_2)




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.tree = background_1
	super._ready() # Replace with function body.
