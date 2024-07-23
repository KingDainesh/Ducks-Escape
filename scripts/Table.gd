extends MeshInstance3D

var Capsule = false
var Prism = false
var Box = false

func body_processing(entered, area, body):
	print(area)
	print(body)
	print(body.name)
	print(body.get_child(0))
	print(body.get_child(0).get_meta("Shape"))
	if body.has_meta("Shape"):
		var shape = body.get_meta("Shape")
		if shape == "capsule" and entered == true: Capsule = true
		elif shape == "capsule": Capsule = false
		elif shape == "prism" and entered == true: Prism = true
		elif shape == "prism": Prism = false
		elif shape == "box" and entered == true: Box = true
		elif shape == "box": Box = false
		if Capsule == true and Prism == true and Box == true: self.queue_free()

func _on_prism_body_entered(body):
	body_processing(true, "Prism", body)

func _on_prism_body_exited(body):
	body_processing(false, "Prism", body)

func _on_capsule_body_entered(body):
	body_processing(true, "Capsule", body)

func _on_capsule_body_exited(body):
	body_processing(false, "Capsule", body)

func _on_cube_body_entered(body):
	body_processing(true, "Cube", body)

func _on_cube_body_exited(body):
	body_processing(false, "Cube", body)
