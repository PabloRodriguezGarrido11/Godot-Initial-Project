extends GroundState

class_name IdleState

func process_physics(delta: float):
	super(delta)
	
	if character.direction:
		animation_state_machine.change_state(PlayerVariables.STATE_MOVE)

	return null
