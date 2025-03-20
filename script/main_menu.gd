extends Control

func _ready():
	$VBoxContainer/LevelButton.pressed.connect(_on_play_pressed)
	#$SettingsButton.pressed.connect(_on_settings_pressed)
	$VBoxContainer/ExitButton.pressed.connect(_on_exit_pressed)

func _on_play_pressed():
	get_tree().change_scene_to_file("res://scene/level.tscn")

#func _on_settings_pressed():
	#print("Pengaturan ditekan!")

func _on_exit_pressed():
	get_tree().quit()
