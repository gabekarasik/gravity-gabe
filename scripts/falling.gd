extends State

@export var running_state : State

func enter():
	super()

func process_physics(delta) -> State:
	parent.velocity.y = parent.gravity_direction * gravity
	
	parent.move_and_slide()
	
	if parent.is_on_ceiling() or parent.is_on_floor():
		return running_state
	
	return
