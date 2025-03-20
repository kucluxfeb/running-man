extends Node

@onready var level_complete_popup = $"../CanvasNextLevel/NextLevel"

var coin: int = 0
var total_coin: int = 5

signal my_coin(coin: int)

func add_coin() -> void:
	coin += 1
	emit_signal("my_coin", coin)
	print("Koin bertambah: %d/%d" % [coin, total_coin])

	if coin >= total_coin:
		if level_complete_popup:
			level_complete_popup.visible = true
			print("Level selesai! Menampilkan popup NextLevel.")
		else:
			print("ERROR: level_complete_popup tidak ditemukan!")

func reset_coin() -> void:
	coin = 0
	emit_signal("my_coin", coin)
	print("Koin direset!")
