extends Control
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _on_pressed():
	if get_name() == "Somar_Rosa":
		Global.addPink(1)		
	if get_name() == "Diminuir_Rosa":
		if Global.getPinkScore() > 0:
			Global.addPink(-1)
	if get_name() == "Somar_Azul":
		Global.addBlue(1)
	if get_name() == "Diminuir_Azul":
		if  Global.getBlueScore() > 0:
			Global.addBlue(-1)
			
			
