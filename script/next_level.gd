extends ColorRect

func _ready():
	$HBoxContainer/RestartButton.pressed.connect(_on_restart_button_pressed)
	$HBoxContainer/SelectLevelButton.pressed.connect(_on_select_level_button_pressed)

func _on_restart_button_pressed():
	get_tree().reload_current_scene()

func _on_select_level_button_pressed():
	get_tree().change_scene_to_file("res://scene/level.tscn")
