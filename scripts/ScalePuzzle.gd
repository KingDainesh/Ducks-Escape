extends Area3D

var total_weight = 0
var target_weight = 1


func _on_body_entered(body):
	if body is RigidBody3D:
		total_weight += body.mass
		update_display()
		if body is XROrigin3D:
			$"../Label3D".text = "TOO FAT"

func _on_body_exited(body):
	if body is RigidBody3D:
		total_weight -= body.mass
		update_display()


func update_display():
	$"../Label3D".text = "Weight: " + str(total_weight) + "kg"
	if total_weight == target_weight:
		# Puzzle is solved
		$"../Label3D".text = "Puzzle Solved!"
