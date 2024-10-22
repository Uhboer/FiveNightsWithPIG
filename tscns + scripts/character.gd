extends CharacterBody2D

@export var SPEED = 100

var health = 5

var have_axe = false

var wood = 0
var stone = 0
var fibers = 0

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

func inputs():
	if have_axe == true:
		$layers/axe.visible = true
	else:
		$layers/axe.visible = false

func _physics_process(delta):
	get_input()
	move_and_slide()
	inputs()
