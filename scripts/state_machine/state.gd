class_name State
extends Node

@export var animation_name : String
@export var gravity : float = 100

var parent : Player

func enter():
	parent.animations.play(animation_name)
	
func exit():
	pass
	
func process_input(event) -> State:
	return

func process_physics(delta) -> State:
	return
	
func process_frame(delta) -> State:
	return
