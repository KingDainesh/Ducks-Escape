extends MeshInstance3D


func body_processing(area, body_rid, body, body_shape_index, local_shape_index):
	if body.Class:
		if str(body.Class) == area:
			self.queue_free()

func _on_prism_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	body_processing("Prism", body_rid, body, body_shape_index, local_shape_index)
