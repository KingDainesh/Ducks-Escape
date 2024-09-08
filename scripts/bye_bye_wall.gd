extends Node

func _ready():
	var puzzle = get_node("Puzzles/Cafe/PickableScale")  # Adjust this path as needed
	if puzzle:
		print("Puzzle node found:", puzzle)
		var callable = Callable(self, "hide_wall")
		puzzle.connect("puzzle_solved", callable)
		hide_wall()
	else:
		print("Puzzle node not found!")

func hide_wall():
	print("Hiding the wall function called")
	queue_free()
