extends CharacterBody2D

var speed = 500

func _ready():
	print("Hola desde _ready")
	pass

func _physics_process(delta):
	if Input.is_action_pressed("ui_up"):
		velocity.y = -1
	elif Input.is_action_pressed("ui_down"):
		velocity.y = 1
	else:
		velocity.y = 0
		
	velocity.y *= speed
	move_and_collide(velocity * delta)
