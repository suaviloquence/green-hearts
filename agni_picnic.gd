extends Level

func _ready() -> void:
	var mansplaining_recovery := Choose2.new(
		"Agni: Why would you say that?! The world is already so messed up it doesn’t even matter.  Worry about yourself.",
		DialogNode.new(
			"$name: Hey, I’m sorry",
			DialogNode.new(
				"$name: I just wanted to show you that there are [i]some[/i] things we can do, even if it feels meaningless in the big picture, it can improve our local community.",
				DialogNode.new(
					"Agni: Ugh, that’s fair, I guess.  I’ll be honest, I still get kind of confused about what things go in which cans, it’s too complicated.",
					DialogNode.new(
						"$name: It’s all good! How about we clean up our picnic together?",
						DialogNode.new(
							"Agni: Hey, that’d be nice.",
							null,
							null,
							add_heart,
						)
					)
				)
			)
		),
		"I'm sorry",
		DialogNode.new(
			"$name: But we still have to try.  I’m going to sort my trash here – it doesn’t cost me anything – and I’d love it if you joined me.",
			DialogNode.new(
				"Agni: Why not, I guess…",
				Terminus.new()
			)
		),
		"You still have to try",
		null,
		func(player): player.hearts -= 1; explode("💔"),
	)
	
	var recycling := Choose2.new(
		"*** Agni finishes their water bottle, and throws it away in the trash bin ***",
		DialogNode.new(
			"$name: You can’t really say that when you don’t even recycle properly.",
			mansplaining_recovery,
		),
		"You could at least recycle.",
		DialogNode.new(
			"It doesn’t cost us anything to do small things like recycling.  I’m going to sort the trash from our picnic, and I’d love it if you joined me!",
			DialogNode.new(
				"Agni: I guess I see your point. I can’t say I’ve been on a trash-sorting date before…",
				Terminus.new()
			)
		),
		"Doing small things still helps"
	)
	
	var weather := DialogNode.new(
		"$name: Some crazy weather we’ve been having, huh? We didn't have all these floods and wildfires and stuff a few years ago…",
		DialogNode.new(
			"Agni: Ugh, it’s really damn annoying talking about this.  There’s nothing we can do - people messed up the world and we have to suffer the consequences.",
			recycling
		)
	)
	
	var food_offer_options := Choose3.new(
		"Agni: Hey, your rice bowl doesn’t look bad either.",
		DialogNode.new(
			"$name: Would you like some of mine?",
			DialogNode.new(
				"Agni: Only if you try some of mine.  When people baby me, I can’t stand it.",
				DialogNode.new(
					"$name: Sounds good!",
					weather
				)
			)
		),
		"Offer a bite",
		DialogNode.new(
			"$name: Would you like to split?",
			DialogNode.new(
				"Agni:  Hey, sure.",
				DialogNode.new(
					"Agni: (+1 HEART) Cute of you to keep the relationship equal.",
					weather,
					null,
					add_heart
				)
			)
		),
		"Offer to split",
		weather,
		"Do nothing",
	)
	
	tree = DialogNode.new(
		"After texting back and forth, you organized a picnic with Agni.",
		DialogNode.new(
			"Agni: Hey $name.",
			DialogNode.new(
				"$name: Hi Agni! I’ve been looking forward to this!",
				DialogNode.new(
					"You spread out the picnic blanket and begin eating.",
					DialogNode.new(
						"$name: So what is it that you’re eating?",
						DialogNode.new(
							"Agni: I picked up this char-grilled chicken caesar salad from a café by my house.",
							DialogNode.new(
								"$name: It looks so good.",
								food_offer_options
							)
						)
					),
					null,
					func(_p): $TextureRect.texture = preload("res://TRASH_GRASS_PICNIC.png"),
				)
			),
			AGNI,
		)
	)
	super._ready()
