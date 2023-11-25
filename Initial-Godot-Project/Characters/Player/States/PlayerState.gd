extends State

class_name PlayerState

var characterDirection: Vector2

func _process(delta):
	characterDirection = Input.get_vector("left", "right", "up", "down").normalized()

func process_input(event: InputEvent) -> PlayerState:
	return null

func process_frame(delta: float) -> PlayerState:
	return null

func process_physics(delta: float) -> PlayerState:
	return null
