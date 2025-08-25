extends CharacterBody2D


## Player Basic Attributes
const SPEED = 250.0
const ACCELERATION = 0.5
const JUMP =  -500

## Dash attributes
var dash = 1
var dash_time = 0
var chargeDash = 0.5
const DASH_LIMIT = 0.5

## Tools

func _physics_process(delta):
	
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	# Getting direction based of inputs clicked
	var direction = Input.get_axis("left", "right")
	
	
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP
	
	# Increase value of dash when dash key is clicked
	if Input.is_action_pressed("dash") and chargeDash > 0:
		dash_time += delta
		chargeDash -= delta
		dash = 3
		
		# Stop dash if exceeded time or charge
		if dash_time >= DASH_LIMIT or chargeDash <= 0:
			dash = 1
			dash_time = 0
	
	# Reset DASH values when button is released
	elif Input.is_action_just_released("dash"):
		dash = 1
		dash_time = 0
	
	
	if dash == 1 and chargeDash < 3.0:
		chargeDash += 1.0 * delta
	
	velocity.x = direction * SPEED * dash
	move_and_slide()
