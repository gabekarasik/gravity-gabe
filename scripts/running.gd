extends State

@export var idle_state : State
@export var falling_state : State

func enter():
	super()
	
func process_frame(delta) -> State:
	parent.velocity.y = parent.gravity_direction * gravity
	
	if parent.velocity.x == 0:

		return idle_state
	
	if !parent.is_on_ceiling() and !parent.is_on_floor():
		return falling_state
		
	parent.move_and_slide()

	return

func process_input(event) -> State:
	if Input.is_action_just_pressed("switch"):
		if parent.is_on_ceiling() or parent.is_on_floor():
			parent.gravity_direction *= -1
			parent.animations.flip_v = !parent.animations.flip_v
			parent.collision_shape.position.y *= -1
			return falling_state
	
	return
		
