extends MeshInstance3D

var Prism = false
var Capsule = false
var Cube = false

func body_processing(entered, area, body):
	print("-----------------------")
	print(entered, " ", area, " ", body)
	if body.find_parent("Prism") != null:
		print("Body is a Prism")
		if area == "Prism":
			print("Area is Prism spot")
			if entered == true:
				Prism = true
			else: 
				Prism = false
	if body.find_parent("Capsule") != null:
		print("Body is a Capsule")
		if area == "Capsule":
			print("Area is Capsule spot")
			if entered == true:
				Capsule = true
			else: 
				Capsule = false
	if body.find_parent("Cube") != null:
		print("Body is a Cube")
		if area == "Cube":
			print("Area is Cube spot")
			if entered == true:
				Cube = true
			else: 
				Cube = false
	print(Prism, " ", Capsule, " ", Cube)
	if Capsule == true and Prism == true and Cube == true: self.queue_free()

func _on_prism_area_shape_entered(area_rid: RID, area: Area3D, area_shape_index: int, local_shape_index: int) -> void:
	body_processing(true, "Prism", area)

func _on_prism_area_shape_exited(area_rid: RID, area: Area3D, area_shape_index: int, local_shape_index: int) -> void:
	body_processing(false, "Prism", area)

func _on_capsule_area_shape_entered(area_rid: RID, area: Area3D, area_shape_index: int, local_shape_index: int) -> void:
	body_processing(true, "Capsule", area)

func _on_capsule_area_shape_exited(area_rid: RID, area: Area3D, area_shape_index: int, local_shape_index: int) -> void:
	body_processing(false, "Capsule", area)

func _on_cube_area_shape_entered(area_rid: RID, area: Area3D, area_shape_index: int, local_shape_index: int) -> void:
	body_processing(true, "Cube", area)

func _on_cube_area_shape_exited(area_rid: RID, area: Area3D, area_shape_index: int, local_shape_index: int) -> void:
	body_processing(false, "Cube", area)
