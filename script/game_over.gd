extends ColorRect
func _ready():
	$HBoxContainer/RestartButton.pressed.connect(_on_restart_button_pressed)
	$HBoxContainer/MainMenuButton.pressed.connect(_on_main_menu_button_pressed)
	
func _on_restart_button_pressed():
	get_tree().reload_current_scene()

func _on_main_menu_button_pressed():
	get_tree().change_scene_to_file("res://scene/main_menu.tscn")
