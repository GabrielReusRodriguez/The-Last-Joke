extends Node2D

class_name Character 
var lifeCount : int = 0


func _init(startingHealth :int = 5):
	lifeCount = startingHealth
