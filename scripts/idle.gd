extends State

@export var falling_state : State

func enter():
	super()
	print(gravity_direction)
	
func process_frame(delta) -> State:
	parent.velocity.y += gravity_direction * gravity * delta
	parent.move_and_slide()

	return

func process_input(event) -> State:
	if Input.is_action_just_pressed("switch"):
		if parent.is_on_ceiling() or parent.is_on_floor():
			gravity_direction *= -1
			return falling_state
	
	return
		
