extends GroundState

class_name MoveState

func process_physics(delta: float):
	super(delta)
	
	if character.direction:
		character.velocity = character.direction * character.speed
	else:
		animation_state_machine.change_state(PlayerVariables.STATE_IDLE)

	character.move_and_slide()

	return null

