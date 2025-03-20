extends Camera2D

@export var player: Node2D

func _process(delta):
	if player:
		position = player.position
