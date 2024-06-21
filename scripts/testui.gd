extends Control

func _on_play_pressed():
	print("Changing")
	get_tree().change_scene_to_file("res://scences/main_game.tscn")


func _on_settings_pressed():
	XRToolsUserSettings.has_button_pressed = "Yes"
