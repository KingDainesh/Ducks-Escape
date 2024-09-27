extends Node

var door_instance: Node = null

func set_door_instance(door_node: Node):
	door_instance = door_node

func hide_door():
	if find_parent("Game").find_child("Walls").find_child("Cafe").find_child("Door"):
		find_parent("Game").find_child("Walls").find_child("Cafe").find_child("Door").queue_free()
