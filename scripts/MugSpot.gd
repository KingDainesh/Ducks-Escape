extends Area3D

func _on_action_area_shape_exited(area_rid: RID, area: Area3D, area_shape_index: int, local_shape_index: int) -> void:
	# Check if the book's name is "PickableBook"
	if area.get_parent().name == "PickableBook":
		print("The book has departed!")
		# Find the wall in the scene tree and remove it
		var wall = get_tree().get_root().find_node("ByeByeWall", true)
		if wall:
			wall.queue_free()
			print("The wall has been removed.")
		else:
			print("Wall not found.")


func _on_area_shape_entered(area_rid: RID, area: Area3D, area_shape_index: int, local_shape_index: int) -> void:
	print("BOOK READY")
