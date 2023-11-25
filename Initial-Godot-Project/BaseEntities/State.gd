extends Node

class_name State

signal state_transition

@export var animation_name: String

@onready var character: CharacterBody2D
@onready var animation_tree: AnimationController
@onready var animation_state_machine: StateMachine

func enter() -> void:
	animation_tree.play(animation_name)

func exit() -> void:
	animation_tree.stop(animation_name)
	
func process_input(event: InputEvent):
	return null

func process_frame(delta: float):
	return null

func process_physics(delta: float):
	return null
