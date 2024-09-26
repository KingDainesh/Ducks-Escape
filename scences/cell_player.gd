extends Node3D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if XRToolsUserSettings.cell_opened == true:
		if $Door:
			$Door.queue_free()
