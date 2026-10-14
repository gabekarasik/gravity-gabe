extends State

@export var idle_state : State

func enter():
	super()
	parent.animations.flip_v = !parent.animations.flip_v
	gravity_direction *= -1

func process_physics(delta) -> State:
	parent.velocity.y += gravity_direction * gravity * delta
	
	parent.move_and_slide()
	
	if parent.is_on_ceiling() or parent.is_on_floor():
		return idle_state
	
	return
