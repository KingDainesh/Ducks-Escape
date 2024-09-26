extends Node3D

# Reference to the object you want to delete
@export var object_to_delete: Node3D

# Set a variable to track if the lever is activated
var is_active: bool = false

func _ready():
	# Ensure that the object to delete is set
	if object_to_delete == null:
		print("Object to delete is not set!")

func _on_Lever_pulled():
	if not is_active:
		is_active = true
		delete_object()

# Method to delete the object
func delete_object():
	if object_to_delete:
		object_to_delete.queue_free()
		print("Object deleted!")
