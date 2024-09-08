extends Area3D

var total_weight = 0
var target_weight = 100
@export var door_scene_path: PackedScene


func _on_body_entered(body):
	if body is RigidBody3D:
		total_weight += body.mass
		update_display()

func _on_body_exited(body):
	if body is RigidBody3D:
		total_weight -= body.mass
		update_display()

func update_display():
	$"../Label3D".text = "Weight: " + str(total_weight) + "kg"
	if total_weight == target_weight:
		# Puzzle is solved
		$"../Label3D".text = "Puzzle Solved!"
		print("Puzzle Solved")
		GlobalManager.hide_door()
		print("Door hidden using global manager")

func _ready():
	var door_instance = door_scene_path.instantiate()
	add_child(door_instance)
	GlobalManager.set_door_instance(door_instance)
