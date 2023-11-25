extends PlayerState

class_name GroundState

@export var idle_state: PlayerState
@export var move_state: PlayerState
@export var swing_state: PlayerState

func process_physics(delta: float) -> PlayerState:
	if (Input.is_action_just_pressed("use")):
		animation_state_machine.change_state(swing_state)
		
	return null
