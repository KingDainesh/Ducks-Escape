extends Area3D



func _on_body_entered(body: Node3D) -> void:
	print("OH HAIL" + str(body))


func _on_body_exited(body: Node3D) -> void:
	pass # Replace with function body.
