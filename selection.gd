extends Level

var hq_prompt_select = "Given this, which one do you think you could date and help control natural disasters?"
var hq_rhea_description = DialogNode.new("... yes. As I was saying, Rhea is the third individual. Even though she has been in the limelight plenty of times, she may be the most difficult target to pursue. She appears very confident and collected on the outside.  She was even the last to be identified despite being such a public figure. You need to make sure not to push her too far. Like the hurricanes tied to her mood, things can head south FAST. With eyes on her at all times, she cares a great deal about how she looks. Appeal to her sense of style and show her how sustainable fashion can beat out fast fashion.
", 
	Choose3.new(hq_prompt_select, Terminus.new(
			func(player): player.mission = Player.Mission.Agni
		), "Agni", Terminus.new(func(player): player.mission = Player.Mission.Nile), "Nile", Terminus.new(func(player): player.mission = Player.Mission.Rhea), "Rhea", RESET))
var y_n_rhea_interupt = DialogNode.new("Wait, that Rhea? Like, the famous activist Rhea Zephyr?", hq_rhea_description, null)
var hq_rhea_prompt = DialogNode.new("Our last file contains information on Rhea, she-", y_n_rhea_interupt, RHEA)
var hq_nile_description = DialogNode.new("This second file is for Nile.  We’ve identified a link between him and the catastrophic floods we’ve been having. Our surveillance squad had a hard time keeping up with him, as all our equipment was in constant danger of water damage whenever he got worked up. He also loves a good meal, so help show him how sustainable agriculture can make food even more delicious.", hq_rhea_prompt, NILE)
var hq_agni_description = DialogNode.new("The first one is Agni. Calling them a hothead is almost too on the nose: when their fiery temper erupts, unfortunately so do wildfires. Be careful of their volatile mood, but you can also get back on their good side if anything occurs. Live and forget, they say.", 
DialogNode.new("According to our intel, they spend a lot of time on nature hikes.  Because of this, we’ve determined a perfect trail for you to make first contact on.  Try to help them stay calm and keep their environment clean by recycling.", hq_nile_description), AGNI)
var y_n_prompt_descriptions = DialogNode.new("If Intel really has evidence to show this is the case… Tell me a little more about my potential dates.", hq_agni_description)
var hq_disaster_reasoning = DialogNode.new("Not control per se: they are seemingly unaware of their condition. It’s more accurate to say that their moods are inexplicably linked to the pattern of appearances of natural disasters.",
			DialogNode.new("Here’s where we need you.  We’ve determined that the best way forward is to give them a little help controlling their moods.  We need you to enter a romantic relationship with one of these three, and help them build a better connection with the environment. This is a very delicate mission, as when they get mad…", DialogNode.new("Let’s just say the city can’t handle any more natural disasters.", y_n_prompt_descriptions)))
var y_n_brief_response = DialogNode.new("Hold on. Are you saying that these three people have the power to control natural disasters?", hq_disaster_reasoning, null)
var hq_briefing = DialogNode.new("No worries $name.  We have identified three individuals in this city who have drawn our attention. We have reason to believe that these individuals’ behavior correlates with the anomalous pattern of natural disasters we’ve been experiencing recently.  It may seem hard to believe, but our investigators have surveilled these three extensively, and without fail, their behavior and mood has led to these disasters occurring rapidly and spontaneously.”", y_n_brief_response)
var y_n_prompt_brief = DialogNode.new("Not yet sir, I just got here. Could you give me the details?", hq_briefing, null)


func _ready():
	tree = DialogNode.new("Agent $name, right on time! I assume you’ve been briefed on your mission?", y_n_prompt_brief)
	#tree = hq_rhea_description
	super._ready()
