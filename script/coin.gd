extends Node2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		Controller.add_coin()
		
		var countdown = get_tree().get_first_node_in_group("countdown")
		
		if countdown:
			countdown.add_time(5)
			
		queue_free()
