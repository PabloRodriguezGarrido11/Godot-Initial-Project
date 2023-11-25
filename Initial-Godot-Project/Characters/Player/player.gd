extends CharacterBody2D

class_name Player

@export var speed: float = 150.0

@onready var sprite: Sprite2D = $Body
@onready var animation_tree: AnimationTree = $AnimationTree
@onready var character_state_machine: CharacterStateMachine = $CharacterStateMachine

func _ready():
	animation_tree.active = true
	character_state_machine.init(self)

func _physics_process(delta: float) -> void:
	character_state_machine.process_physics(delta)

func _process(delta: float) -> void:
	character_state_machine.process_frame(delta)
