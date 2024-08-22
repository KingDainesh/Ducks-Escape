extends Node3D


func _on_action_area_shape_entered(area_rid: RID, area: Area3D, area_shape_index: int, local_shape_index: int) -> void:
	print("Lever stuff is happening")
	print("THE AREA HAS BEEN ENTERED BY:" + str(area))
	var player_cell = find_parent("cell_player")
	if player_cell != null:
		print("Parent is player cell")
		if player_cell.find_child("Door") != null:
			print("There is indeed a door")
			player_cell.find_child("Door").queue_free()


func _on_action_area_shape_exited(area_rid: RID, area: Area3D, area_shape_index: int, local_shape_index: int) -> void:
	print("THE LEVER HAS DEPARTED")
