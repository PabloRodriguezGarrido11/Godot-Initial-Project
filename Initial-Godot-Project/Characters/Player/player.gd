extends CharacterBody2D

class_name Player

@export var speed: float = 150.0
@export var direction: Vector2 = Vector2.ZERO

@onready var sprite: Sprite2D = $Body
@onready var animation_tree: AnimationController = $AnimationTree
@onready var character_state_machine: StateMachine = $StateMachine

func _ready():
	animation_tree.active = true
	character_state_machine.init(self)

func _physics_process(delta: float) -> void:
	character_state_machine.process_physics(delta)

func _process(delta: float) -> void:
	direction = get_character_direction()
	character_state_machine.process_frame(delta)
	
func get_character_direction():
	return Input.get_vector(InputsMap.LEFT, InputsMap.RIGHT, InputsMap.UP,  InputsMap.DOWN).normalized()
