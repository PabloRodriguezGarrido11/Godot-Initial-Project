extends StateMachine

class_name CharacterStateMachine

func init(parent: Player) -> void:
	for child in get_children():
		if(child is PlayerState):
			child.character = parent
			child.animation_tree = animation_tree
			child.animation_state_machine = self
		else:
			push_warning("Child " + child.name + " is not a State for CharacterStateMachine")

	change_state(start_state)
