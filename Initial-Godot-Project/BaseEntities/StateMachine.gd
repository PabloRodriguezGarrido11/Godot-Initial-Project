extends Node

class_name StateMachine

@export var start_state: State
@export var current_state: State
@export var animation_tree: AnimationController

var states: Dictionary = {}

func init(parent: CharacterBody2D) -> void:
	for child in get_children():
		if(child is State):
			child.character = parent
			child.animation_tree = animation_tree
			child.animation_state_machine = self
			
			states[child.name.to_lower()] = child
		else:
			push_warning("Child " + child.name + " is not a State for StateMachine")

	change_state(start_state.name.to_lower())

func change_state(new_state_name) -> void:
	var new_state = states[new_state_name.to_lower()]
	
	if new_state == null:
		return
	
	if current_state:
		current_state.exit()

	current_state = new_state
	current_state.enter()
	
func switch_state(new_state_name) -> void:
	if new_state_name == null:
		return

	change_state(new_state_name)

func process_physics(delta: float) -> void:
	switch_state(current_state.process_physics(delta))

func process_input(event: InputEvent) -> void:
	switch_state(current_state.process_input(event))

func process_frame(delta: float) -> void:
	switch_state(current_state.process_frame(delta))
