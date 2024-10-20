extends Node2D

@onready var good = $vinientka_good
@onready var bad = $vinientka_bad

func _process(delta):
	look_at(get_global_mouse_position())
