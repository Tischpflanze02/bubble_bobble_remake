extends CharacterBody2D


const SPEED = 50.0
const JUMP_VELOCITY = -100.0

@onready var _animated_sprite = $texture
@onready var check_up = $RayCast2D


#creating tile



func _process(_delta):
	if Input.is_action_pressed("move_right"):
		_animated_sprite.flip_h = true
		_animated_sprite.play("walk")
	elif Input.is_action_pressed("move_left"):
		_animated_sprite.flip_h = false
		_animated_sprite.play("walk")
	else:
		_animated_sprite.stop()
	
	
	if check_up.is_colliding():
		
	#print(check_up.collide_with_bodies)

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta / 8

	# Handle jump.
	if Input.is_action_just_pressed("move_up") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
	
