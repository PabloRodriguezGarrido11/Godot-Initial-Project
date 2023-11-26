extends PlayerState

class_name GroundState

func process_physics(_delta: float):
	
	if character.velocity == Vector2.ZERO:
		animation_state_machine.change_state(PlayerVariables.STATE_IDLE)
	else:
		animation_state_machine.change_state(PlayerVariables.STATE_MOVE)
		
	if (Input.is_action_just_pressed(InputsMap.USE)):
		var swing_blend_position = animation_tree.get_position(PlayerVariables.STATE_SWING)
		
		animation_state_machine.change_state(PlayerVariables.STATE_SWING)

	return null
