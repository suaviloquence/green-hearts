extends Node2D

signal end(sustainability: int, taste: int)

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

var order := ["Linguine", "Shrimp", "Onion", "Parsley", "White Wine"]

var money := 35
var cart := {
	"Linguine": null,
	"Shrimp": null,
	"Onion": null,
	"Parsley": null,
	"White Wine": null,
}

var aisle := "Linguine"

var selected: Item = null
var time := 45.


func _ready():
	$VBoxContainer/HBoxContainer/Time.text = "%d secs" % [ceili(time)];
	redraw()

func stop():
	var taste := 0
	var sus := 0
	for thang in cart:
		var item: Item = cart[thang]
		if not item:
			taste -= 5
		else:
			taste += item.taste
			sus += item.sustainability
	end.emit(sus, taste)
	self.queue_free()

func _process(delta: float) -> void:
	time -= delta
	if time <= 0:
		stop()
	elif ceili(time + delta) != ceili(time):
		$VBoxContainer/HBoxContainer/Time.text = "%d secs" % [ceili(time)];

func redraw():
	$VBoxContainer/HBoxContainer/Money.text = "$%d" % [money] 
	
	if cart.values().all(func(x): return x != null):
		$Finish.show()
	else:
		$Finish.hide()
	
	for k in order:
		if k == aisle:
			aisles[k]["node"].show()
		else:
			aisles[k]["node"].hide()
		
		var labels := $VBoxContainer/TextureRect/MarginContainer/VBoxContainer
		var label := labels.get_node(k) as RichTextLabel
				
		if cart[k]:
			var item: Item = cart[k]
			label.text = "[s]%s: $%d[/s]" % [item.name, item.price]
		else:
			label.text = k
	
	var info := $Info
	
	if selected:
		info.show()
		$Info/MarginContainer/RichTextLabel.text = "[b]%s[/b]\n%s\n\nPrice: $%d" % [selected.name, selected.desc, selected.price]
	else:
		info.hide()
			


func try_select(item: Item):
	if selected == item :
		if cart[item.category] == item:
			cart[item.category] = null
			money += item.price
			selected = null
		elif not cart[item.category] and money >= item.price:
			money -= item.price
			cart[item.category] = item
			selected = null
	else:
		selected = item
		
	redraw()



func _on_fresh_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select"):
		try_select(FRESH_LINGUINE)

func _on_evil_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select"):
		try_select(EVIL_LINGUINE)

func _on_farmed_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select"):
		try_select(FARMED_SHRIMP)


func _on_mushroom_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select"):
		try_select(MUSHROOMS)


func _on_wild_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select"):
		try_select(WILD_PRAWNS)

func _on_bagged_onion_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select"):
		try_select(BAGGED_ONION)

func _on_loose_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select"):
		try_select(LOOSE_ONION)

func _on_farm_fresh_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select"):
		try_select(FARMERS_MARKET_ONION)

func _on_bagged_parsley_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select"):
		try_select(BAGGED_PARSLEY)

func _on_dried_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select"):
		try_select(DRIED_PARSLEY)
		
func _on_boxed_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select"):
		try_select(BOXED_WINE)

func _on_normal_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select"):
		try_select(NORMAL_WINE)

func _on_local_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select"):
		try_select(LOCAL_WINE)

func _on_fresh_parsley_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select"):
		try_select(FRESH_PARSLEY)

func _on_left_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select"):
		var idx := order.find(aisle)
		aisle = order[(idx - 1 + len(order)) % len(order)]
		selected = null
		redraw()

func _on_right_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select"):
		var idx := order.find(aisle)
		aisle = order[(idx + 1) % len(order)]
		selected = null
		redraw()

func _on_cancel_pressed() -> void:
	selected = null
	redraw()
