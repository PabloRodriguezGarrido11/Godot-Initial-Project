extends AnimationTree

class_name AnimationController

const BASE_PATH = "parameters/%s/%s"
const CONDITIONS_PARAM = "conditions"
const POSITION_PARAM = "blend_position"

func play(animationName: String) -> void:
	setBool(animationName)
	
func stop(animationName: String) -> void:
	setBool(animationName, false)
	
func changePosition(stateName: String, paramValue) -> void:
	changeParam(stateName, POSITION_PARAM, paramValue)

func setBool(paramName: String, paramValue: bool = true) -> void:
	changeParam(CONDITIONS_PARAM, paramName, paramValue)

func changeParam(stateName: String, paramName: String, paramValue) -> void:
	self[getAnimationPath(stateName, paramName)] = paramValue

func getAnimationPath(stateName: String, paramName: String) -> String:
	return BASE_PATH % [stateName, paramName]
