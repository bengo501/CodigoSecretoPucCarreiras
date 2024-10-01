extends Button
@onready var timerLabel = $"../Painel_Main/Box-Tempo/Tempo"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	if timerLabel != null:
		timerLabel.text = "00:00"
	Global.showCrono = false
	if !Global.timer_on:
		Global.changeTurn()
	else:
		Global.timer_on = false
		Global.changeTurn()
