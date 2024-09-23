extends Area3D


var breadcount = 0


func _on_area_shape_entered(area_rid: RID, area: Area3D, area_shape_index: int, local_shape_index: int) -> void:
	print("OH HAIL NAH" + str(area.get_parent().name))
	if "PickableBread" in str(area.get_parent().name):
		breadcount += 1
		print("Bread Count: " + str(breadcount))
		if breadcount == 10:
			self.find_parent("Game").find_child("player").position = Vector3(0.2, 1.5, 24.0)


func _on_area_shape_exited(area_rid: RID, area: Area3D, area_shape_index: int, local_shape_index: int) -> void:
	if "PickableBread" in str(area.get_parent().name):
		breadcount -= 1
