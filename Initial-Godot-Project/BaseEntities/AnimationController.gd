extends AnimationTree

class_name AnimationController

const BASE_PATH = "parameters/%s/%s"

func play(animationName: String) -> void:
	setBool(animationName)
	
func stop(animationName: String) -> void:
	setBool(animationName, false)

func setBool(paramName: String, paramValue: bool = true) -> void:
	var animationPath = BASE_PATH % ["conditions", paramName]
	
	self[animationPath] = paramValue

func changeParam(stateName: String, paramName: String, paramValue: bool) -> void:
	var animationPath = BASE_PATH % [stateName, paramName]
	
	self[animationPath] = paramValue
