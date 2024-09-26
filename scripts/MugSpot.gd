extends Area3D


func _on_area_shape_entered(area_rid: RID, area: Area3D, area_shape_index: int, local_shape_index: int) -> void:
	print("BOOK READY")


func _on_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	print(area.get_parent().name)
	if area.get_parent().name == "PickableBook":
		print("The book has departed!")
		# Find the wall in the scene tree and remove it
		if self.find_parent("Game").find_child("ByeByeWall"):
			var wall = self.find_parent("Game").find_child("ByeByeWall")
			if wall:
				wall.queue_free()
				print("The wall has been removed.")
			else:
				print("Wall not found.")
