extends Area2D
	
func _body_entered(body):
	if body.get_name() == "PlayerYellow":
		body.ladder_count += 1
		
func _body_exited(body):
	if body.get_name() == "PlayerYellow":
		body.ladder_count -= 1
