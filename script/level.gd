extends Control

func _ready():
	$VBoxContainer/Level1Button.pressed.connect(_on_level_1_pressed)
	$VBoxContainer/Level2Button.pressed.connect(_on_level_2_pressed)
	$VBoxContainer/Level3Button.pressed.connect(_on_level_3_pressed)

func _on_level_1_pressed():
	get_tree().change_scene_to_file("res://scene/level_1.tscn")

func _on_level_2_pressed():
	get_tree().change_scene_to_file("res://scene/level_2.tscn")

func _on_level_3_pressed():
	get_tree().change_scene_to_file("res://scene/level_3.tscn")
