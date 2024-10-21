extends StaticBody2D



func _ready():
	var rng = RandomNumberGenerator.new()
	print(rng.randi_range(0, 3))

func _process(delta):
	pass


func _on_use_zone_body_entered(body):
	if body.name == "character" and $"../character".have_axe == true:
		$Button.visible = true


func _on_use_zone_body_exited(body):
	if body.name == "character":
		$Button.visible = false


func _on_button_pressed():
	if $"../character".have_axe == true:
		queue_free()
