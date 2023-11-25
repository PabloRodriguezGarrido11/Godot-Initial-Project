extends GroundState

class_name IdleState

func process_physics(delta: float) -> PlayerState:
	if characterDirection:
		animation_state_machine.change_state(move_state)
	
	return null
