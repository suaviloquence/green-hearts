extends Level

var hq_prompt_select = "Knowing that information, we need you to take one of these individuals and convince them to not go crazy. Who do you select?"
var hq_rhea_description = DialogNode.new("... yes. As I was saying, Rhea is our 3rd individual. Even though she has made plenty of public appearances, I have reason to believe she might be the most difficult target to pursue. She appears very calm and collected on the outside, it’s the reason she was the last to be identified despite being a public figure. You just have to make sure not to push her too far. Like the hurricanes tied to her mood, things can head south FAST. With eyes on her at all time, she cares about she looks. More so than that, she cares about how she does it. Nothing angers her more than non-sustainable clothing practices.", Choose3.new(
		hq_prompt_select, Terminus.new(
			func(player): player.mission = Player.Mission.Agni
		), "Agni", Terminus.new(func(player): player.mission = Player.Mission.Nile), "Nile", Terminus.new(func(player): player.mission = Player.Mission.Rhea), "Rhea", null), null)
var y_n_rhea_interupt = DialogNode.new("Wait, Rhea? Like, the political activist on the news Rhea?", hq_rhea_description, null)
var hq_rhea_prompt = DialogNode.new("Our last file contains information on Rhea, she-", y_n_rhea_interupt, null)
var hq_nile_description = DialogNode.new("The next file we have belongs to the 2nd figure we’ve identified, his name is Nile (show picture). As you could guess, his name comes from the very famous body of water. Funny, since his mood has a direct influence on the surrounding water. Our surveillance squad had a hard time keeping up with him, all our equipment was in constant danger of water damage whenever he got worked up. Particularly, he had a strong reaction when he saw unsustainable food sources being sold and prepared. Something about the cruelty on animals and the effect it has on the globe.", hq_rhea_prompt, null)
var hq_agni_description = DialogNode.new("Yes. The first of the 3 on record is named Agni. (if possible, show their picture on screen during the description). Calling them a hothead is pretty on the nose, given as their mood is attached to the appearance of wildfires. Though their mood is pretty volatile, it should also be simple enough to get on their good side should anything occur. Live and forget, they say. Anyways, our Intel tells us that they spend a lot of their time on nature hikes, we even located a preferred trail you could try to initiate first contact in. They seriously enjoy their walking trails, our surveillance even noted they would spend hours cleaning, recycling, and keeping the environment clean.", hq_nile_description, null)
var y_n_prompt_descriptions = DialogNode.new("It’s a little hard to believe, but I trust Intel’s word. Could you tell me a little more about those 3 people?", hq_agni_description, null)
var hq_disaster_reasoning = DialogNode.new("Control might not be the best word, they are seemingly unaware of their condition.
It’s more accurate to say that their mood is intrinsically tied to the appearances of these occurring disasters.", y_n_prompt_descriptions, SCARY_GUY)
var y_n_brief_response = DialogNode.new("Wait, are you saying that these 3 people have the power to control the natural disasters?", hq_disaster_reasoning, null)
var hq_briefing = DialogNode.new("No worries $name as written on file, there are 3 individuals inside this city who have drawn our attention. Intel has let us know that these 3 individuals investigated are responsible for the weird fluctuation of natural disaster patterns in the area. Our investigators followed these 3 individuals around the city, and had noted throughout an extensive surveillance period that their behavior and mood leads to the rapid apparition and strength of each of their associated disaster events.", y_n_brief_response, preload("res://down.png"))
var y_n_prompt_brief = DialogNode.new("Not yet sir, I just arrived a minute ago. Could you give me the details?", hq_briefing, null)


func _ready():
	tree = DialogNode.new("Agent $name, right on time! I assume you’ve been briefed on your mission?", hq_rhea_description, preload("res://icon.svg"))
	super._ready()
