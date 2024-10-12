extends Node2D

class Item:
	var category: String
	var name: String
	var desc: String
	var price: int
	var sustainability: int
	var taste: int
	
	func _init(category: String, name: String, desc: String, price: int, sustainability: int, taste: int = 0):
		self.category = category
		self.price = price
		self.sustainability = sustainability
		self.taste = taste
		self.name = name
		self.desc = desc

var FRESH_LINGUINE := Item.new("Linguine", "Pasta Bros' Fresh Linguine",
	"handmade by local artisans The Pasta Bros using local ingredients", 8, 3, 1)
var EVIL_LINGUINE := Item.new("Linguine", "Kwaft Boxed Linguine",
	"Mass-produced dried linguine, made in a factory overseas.", 1, -1, -1)
	
var FARMED_SHRIMP := Item.new("Shrimp", "Eyre Farmed Shrimp",
	"Factory-farmed shrimp available in stores nationwide.", 7, -3)
var MUSHROOMS := Item.new("Shrimp", "King Oyster Mushrooms",
	"You read that this can be used as a substitute for shrimp.  Jury is still out on if it tastes the same...", 8, 4, -2)
var WILD_PRAWNS := Item.new("Shrimp", "Wild-caught Prawns",
	"Small-batch wild-caught domestic prawns.  Pricey, but many people swear by it.", 16, 4, 1)

var BAGGED_ONION := Item.new("Onion", "Bagged Onions",
	"Several small onions in the trademark red plastic mesh bag.  Looks like they've been driven a great distance in a truck", 2, -2)
var LOOSE_ONION := Item.new("Onion", "Loose Onions",
	"Loose onions in the bin, much bigger than their bagged counterpart.", 3, 1)
var FARMERS_MARKET_ONION := Item.new("Onion", "Farmer's Market Onions", 
	"Loose onions from the local farmer's market.  Locally grown, but pricey.", 6, 4, 1)
	
var BAGGED_PARSLEY := Item.new("Parsley", "Bagged Parsley",
	"Bunches of parsley in a plastic bag and refrigerated", 1, -2)
var DRIED_PARSLEY := Item.new("Parsley", "Dried Parsley",
	"A spice container full of dried parsley leaves.  Note that your recipe calls for fresh...", 2, 0, -1)
var FRESH_PARSLEY := Item.new("Parsley", "Fresh Parsley",
	"Bunches of fresh parsley loose in the bin, damp from being watered", 4, 1)

var BOXED_WINE := Item.new("White Wine", "Boxed Wine",
	"White wine in a box.  It's cheap, but it'll work for cooking", 4, -2, -1)
var NORMAL_WINE := Item.new("White Wine", "Cheap Wine",
	"Cheap wine in a bottle.  It's definitely cooking wine.", 6, 0)
var LOCAL_WINE := Item.new("White Wine", "Local Vineyard Wine",
	"Locally grown and aged white wine.  Pricey, but still affordable for what it is", 15, 3, 1)

@onready var aisles := {
	"Linguine": {
		"node": $Linguine,
		"items": {
			$Linguine/Fresh: FRESH_LINGUINE, 
			 $Linguine/Evil: EVIL_LINGUINE,
		}
	},
	"Shrimp": {
		"node": $Shrimp,
		"items": {
			$Shrimp/Farmed: FARMED_SHRIMP,
			$Shrimp/Mushroom: MUSHROOMS,
			$Shrimp/Wild: WILD_PRAWNS
		}
	},
	"Onion": {
		"node": $Onion,
		"items": {
			$Onion/Bagged: BAGGED_ONION,
			$Onion/Loose: LOOSE_ONION,
			$Onion/FarmFresh: FARMERS_MARKET_ONION,
		}
	},
	"Parsley": {
		"node": $Parsley,
		"items": {
			$Parsley/Bagged: BAGGED_PARSLEY,
			$Parsley/Dried: DRIED_PARSLEY,
			$Parsley/Fresh: FRESH_PARSLEY,
		}
	},
	"White Wine": {
		"node": $WhiteWine,
		"items": {
			$WhiteWine/Boxed: BOXED_WINE,
			$WhiteWine/Normal: NORMAL_WINE,
			$WhiteWine/Local: LOCAL_WINE,
		}
	}
} 

var money := 35
var cart := []


func _on_fresh_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass # Replace with function body.


func _on_evil_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass # Replace with function body.


func _on_farmed_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass # Replace with function body.


func _on_mushroom_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass # Replace with function body.


func _on_wild_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass # Replace with function body.


func _on_bagged_onion_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass # Replace with function body.


func _on_loose_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass # Replace with function body.


func _on_farm_fresh_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass # Replace with function body.


func _on_bagged_parsley_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass # Replace with function body.


func _on_dried_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass # Replace with function body.

func _on_boxed_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass # Replace with function body.


func _on_normal_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass # Replace with function body.


func _on_local_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass # Replace with function body.


func _on_fresh_parsley_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass # Replace with function body.
