extends GroundState

class_name MoveState

func process_physics(delta: float) -> PlayerState:
	if characterDirection:
		character.velocity = characterDirection * character.speed
	else:
		animation_state_machine.change_state(PlayerVariables.STATE_IDLE)

	character.move_and_slide()

	return null

func process_input(event: InputEvent) -> PlayerState:
	print("procesing input event")
	return null;
