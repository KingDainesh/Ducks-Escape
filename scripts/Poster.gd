extends RigidBody3D


func _on_area_3d_body_entered(body):
	if "LeftHand" in str(body.find_parent("LeftHand")) or "LeftHand" in str(body.find_parent("LeftHand")):
		self.freeze = false
