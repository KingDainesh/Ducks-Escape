extends RigidBody3D


func _on_body_entered(body):
	print("Poster collided with ", body)


func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	print("Poster collided with shape ", body)
