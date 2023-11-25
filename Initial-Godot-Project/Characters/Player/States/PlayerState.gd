extends State

class_name PlayerState

enum PlayerStates { IDLE, MOVE, SWING }

var characterDirection: Vector2 = Vector2.ZERO

func _process(delta):
	characterDirection = Input.get_vector("left", "right", "up", "down").normalized()
	updateParamsPosition()

func updateParamsPosition():
	animation_tree.changePosition("idle", characterDirection)
	animation_tree.changePosition("move", characterDirection)
	animation_tree.changePosition("swing", characterDirection)

func process_input(event: InputEvent) -> PlayerState:
	return null

func process_frame(delta: float) -> PlayerState:
	return null

func process_physics(delta: float) -> PlayerState:
	return null
