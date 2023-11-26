extends GroundState

class_name IdleState

func enter() -> void:
	super()
	character.velocity = Vector2.ZERO

func process_physics(delta: float):
	super(delta)
	
	if character.direction:
		animation_state_machine.change_state(PlayerVariables.STATE_MOVE)

	return null
