extends Control

var visibility = false


func _process(delta):
	pass


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
