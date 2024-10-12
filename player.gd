extends Node2D
class_name Player

# name
@export var player_name: String = ""
# pronouns
@export var they := "they"
@export var them := "them"
@export var their := "their"
@export var theirs := "theirs"
@export var themself := "themself"
# pronouns and anything else player needs to do

@export var hearts: int = 0
@export var bad_decisions: Array = []

enum Mission {
	Agni,
	Nile,
	Rhea,
}

@export var mission: Mission
