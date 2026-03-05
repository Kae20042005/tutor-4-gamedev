extends CharacterBody2D

@export var speed: int = 400
@export var gravity: int = 1200
@export var jump_speed: int = -400
@export var climb_speed: int = 200

var ladder_count = 0
var on_ladder: bool:
	get:
		return ladder_count > 0

func get_input():
	velocity.x = 0
	
	if on_ladder:
		velocity.y = 0
		if Input.is_action_pressed("climb_up"):
			velocity.y = -climb_speed
		elif Input.is_action_pressed("climb_down"):
			velocity.y = climb_speed
	else:
		if is_on_floor() and Input.is_action_just_pressed("jump"):
			velocity.y = jump_speed
			
	if Input.is_action_pressed("right"):
		velocity.x += speed
	if Input.is_action_pressed("left"):
		velocity.x -= speed


func _physics_process(delta):
	velocity.y += delta * gravity
	get_input()
	move_and_slide()


func _process(_delta):
	if not is_on_floor() and not on_ladder:
		$AnimatedSprite2D.play("Jump")
	elif on_ladder:
		$AnimatedSprite2D.play("Climb")
	elif velocity.x != 0:
		$AnimatedSprite2D.play("Walk")
	else:
		$AnimatedSprite2D.play("Idle")

	if velocity.x != 0:
		if velocity.x > 0:
			$AnimatedSprite2D.flip_h = false
		else:
			$AnimatedSprite2D.flip_h = true
