extends GroundState

class_name MoveState

@export var idle_state: PlayerState
@export var swing_state: PlayerState

func process_physics(delta: float) -> PlayerState:
	if characterDirection:
		character.velocity = characterDirection * character.speed
	else:
		animation_state_machine.change_state(idle_state)

	character.move_and_slide()

	return null

func process_input(event: InputEvent) -> PlayerState:
	print("procesing input event")
	return null;
