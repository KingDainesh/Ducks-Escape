extends Area3D


func _on_action_area_shape_exited(area_rid: RID, area: Area3D, area_shape_index: int, local_shape_index: int) -> void:
	print("THE Mug HAS DEPARTED")


func _on_area_shape_entered(area_rid: RID, area: Area3D, area_shape_index: int, local_shape_index: int) -> void:
	print("THE MUG HAS ENTERED, THE AREA")
	print(area.get_parent())
	if "PickableMug" in str(area.get_parent()):
		var scene = self.find_parent("Game")
		if scene != null:
			if scene.find_child("ByeByeWall") != null:
				scene.find_child("ByeByeWall").queue_free()
