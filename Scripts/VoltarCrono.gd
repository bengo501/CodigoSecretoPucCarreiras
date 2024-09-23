extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	Global.showCrono = false
	if !Global.timer_on:
		Global.changeTurn()
	else:
		Global.timer_on = false
	pass # Replace with function body.
