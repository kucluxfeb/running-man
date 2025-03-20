extends Label

@onready var timer: Timer = $Timer
@onready var game_over_popup = $"/root/Level1/CanvasGameOver/GameOver"

var countdown: int = 10

func updateLabelText() -> void:
	text = str(countdown)

func _ready() -> void:
	updateLabelText()
	timer.start()
	timer.wait_time = 1
	timer.autostart = true

func _on_timer_timeout() -> void:
	if countdown > 0:
		countdown -= 1
		updateLabelText()
	else:
		timer.stop()
		game_over_popup.visible = true

func add_time(amount: int) -> void:
	countdown += amount
	updateLabelText()
