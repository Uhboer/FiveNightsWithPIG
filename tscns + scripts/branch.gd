extends Area2D

func _process(delta):
	pass

func _on_body_entered(body):
	if body.name == "character":
		$Button.visible = true


func _on_body_exited(body):
	if body.name == "character":
		$Button.visible = false


func _on_button_pressed():
	$"../character".wood += 1
	queue_free()
