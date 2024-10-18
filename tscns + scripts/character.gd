extends CharacterBody2D

@export var SPEED = 400

@onready var anim = $AnimatedSprite2D

var running = false

func get_input():
	var direction = Input.get_vector("a", "d", "w", "s")
	if direction:
		anim.play("Run")
		velocity = direction * SPEED
	else:
		velocity = Vector2(0, 0)
		anim.play("Idle")

func _physics_process(delta):
	get_input()
	move_and_slide()
