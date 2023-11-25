extends Node

class_name StateMachine

@export var start_state: State
@export var current_state: State
@export var animation_tree: AnimationController

func change_state(new_state) -> void:
	if current_state:
		current_state.exit()
	current_state = new_state
	current_state.enter()
	
func switch_state(new_state) -> void:
	if new_state == null:
		return

	change_state(new_state)

func process_physics(delta: float) -> void:
	switch_state(current_state.process_physics(delta))

func process_input(event: InputEvent) -> void:
	switch_state(current_state.process_input(event))

func process_frame(delta: float) -> void:
	switch_state(current_state.process_frame(delta))
