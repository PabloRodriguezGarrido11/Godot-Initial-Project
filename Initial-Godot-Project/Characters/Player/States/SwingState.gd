extends GroundState

class_name SwingState

func process_physics(delta: float):
	animation_state_machine.change_state(PlayerVariables.STATE_IDLE)
		
	return null
