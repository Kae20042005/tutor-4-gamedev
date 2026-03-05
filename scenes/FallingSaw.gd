extends RigidBody2D

@export var sceneName = "LoseScreen"
	
func _on_body_touch(body):
	if body.get_name() == "PlayerYellow":
		get_tree().change_scene_to_file(str("res://scenes/" + sceneName + ".tscn"))
	else:
		queue_free()
