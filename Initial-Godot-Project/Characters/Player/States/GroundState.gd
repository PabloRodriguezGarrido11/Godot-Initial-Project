extends PlayerState

class_name GroundState

func process_physics(delta: float) -> PlayerState:
	if (Input.is_action_just_pressed("use")):
		animation_state_machine.change_state(PlayerVariables.STATE_SWING)
		
	return null
