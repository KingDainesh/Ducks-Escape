extends Node

#
#func body_processing(entered, area, body):
	#print(area)
	#print(body)
	#print(body.find_parent("Cube"))
	#print(body.find_parent("Capsule"))
	#print(body.find_parent("Prism"))
	#print(body.get_parent().has_method("get_metadata"))
	#if body.has_meta("Shape"):
		#var shape = body.get_meta("Shape")
		#if shape == "capsule" and entered == true: Capsule = true
		#elif shape == "capsule": Capsule = false
		#elif shape == "prism" and entered == true: Prism = true
		#elif shape == "prism": Prism = false
		#elif shape == "box" and entered == true: Box = true
		#elif shape == "box": Box = false
		#if Capsule == true and Prism == true and Box == true: self.queue_free()
