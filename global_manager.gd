extends Node

var door_instance: Node = null

func set_door_instance(door_node: Node):
	door_instance = door_node

func hide_door():
	if door_instance:
		door_instance.hide_door()
