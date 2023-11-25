extends State

class_name PlayerState

func _process(delta):
	update_blend_positions()

func update_blend_positions():
	if (character.direction == Vector2.ZERO):
		return
	
	animation_tree.changePosition(PlayerVariables.STATE_IDLE, character.direction)
	animation_tree.changePosition(PlayerVariables.STATE_MOVE, character.direction)
	animation_tree.changePosition(PlayerVariables.STATE_SWING, character.direction)


