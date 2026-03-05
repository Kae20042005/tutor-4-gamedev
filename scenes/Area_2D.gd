extends Area2D

@export var sceneName: String = "Level 1"
@export var bodyName: String = "Player"

func _on_Area_Trigger_body_entered(body):
	if body.get_name() == bodyName:
		get_tree().change_scene_to_file(str("res://scenes/" + sceneName + ".tscn"))
		
