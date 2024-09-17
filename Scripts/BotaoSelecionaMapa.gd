extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.

func _on_pressed():
	var i = int(str(get_name()))
	Global.setMap(i)


func _on__pressed():
	pass # Replace with function body.
