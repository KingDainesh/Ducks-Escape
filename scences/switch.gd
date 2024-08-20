extends Node3D


func _on_action_area_shape_entered(area_rid: RID, area: Area3D, area_shape_index: int, local_shape_index: int) -> void:
	print("THE LEVER HAS ENTERED, THE AREA")
	var player_cell = find_parent("cell_player")
	if player_cell != null:
		player_cell.find_child("Door").queue_free()


func _on_action_area_shape_exited(area_rid: RID, area: Area3D, area_shape_index: int, local_shape_index: int) -> void:
	print("THE LEVER HAS DEPARTED")
