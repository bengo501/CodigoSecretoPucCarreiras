extends Button
var press = false
var original_color = Color(1, 1, 1, 1)  # Cor original (branca)
var alternate_color = Color(0, 0, 0, 1)  # Cor quando o botão for pressionado (vermelha)

func _ready():
	original_color = self.modulate  # Salva a cor original
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_pressed():
	press = !press
	Global.isLockPressed = !Global.isLockPressed
	if !press:
		self.modulate = original_color  # Volta para a cor original
		pass
	else:
		self.modulate = alternate_color  # Muda para a cor alternada
	pass # Replace with function body.
