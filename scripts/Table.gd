extends MeshInstance3D

var Capsule = false
var Prism = false
var Box = false

func body_processing(entered, area, body_rid, body, body_shape_index, local_shape_index):
	print(body_rid)
	print(body.name)
	print(body.has_meta("Shape"))
	print(body.get_meta("Shape"))
	if body.has_meta():
		if str(body.get_meta()) == "capsule" and entered == true: Capsule = true
		elif str(body.Metadata.Class) == "capsule": Capsule = false
		elif str(body.Metadata.Class) == "prism" and entered == true: Prism = true
		elif str(body.Metadata.Class) == "prism": Prism = false
		elif str(body.Metadata.Class) == "box" and entered == true: Box = true
		elif str(body.Metadata.Class) == "box": Box = false
		if Capsule == true and Prism == true and Box == true: self.queue_free()

func _on_prism_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	body_processing(true, "Prism", body_rid, body, body_shape_index, local_shape_index)

func _on_capsule_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	body_processing(true, "Capsule", body_rid, body, body_shape_index, local_shape_index)

func _on_cube_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	body_processing(true, "Cube", body_rid, body, body_shape_index, local_shape_index)

func _on_prism_body_shape_exited(body_rid, body, body_shape_index, local_shape_index):
	body_processing(false, "Prism", body_rid, body, body_shape_index, local_shape_index)

func _on_capsule_body_shape_exited(body_rid, body, body_shape_index, local_shape_index):
	body_processing(false, "Capsule", body_rid, body, body_shape_index, local_shape_index)

func _on_cube_body_shape_exited(body_rid, body, body_shape_index, local_shape_index):
	body_processing(false, "Cube", body_rid, body, body_shape_index, local_shape_index)
