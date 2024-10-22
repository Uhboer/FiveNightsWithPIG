extends Control

var visibility = false

@onready var character = $".."

func _process(delta):
	$wood.text = str("wood: ", character.wood)
	$stone.text = str("wood: ", character.stone)
	$fibers.text = str("wood: ", character.fibers)


func _on_button_pressed():
	if visibility == false:
		$craft_menu.visible = true
		visibility = true
	elif visibility == true:
		$craft_menu.visible = false
		visibility = false


func _on_craft_menu_item_activated(index):
	if index == 0:
		$"..".have_axe = true
