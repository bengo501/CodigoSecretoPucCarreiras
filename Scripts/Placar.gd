extends Control
@onready var pinkLabel = $"../Pontuação_Rosa"
@onready var blueLabel = $"../Pontuação_Azul"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _on_pressed():
	if get_name() == "Somar_Rosa":
		Global.addPink(1)
		print(pinkLabel)
		pinkLabel.text = str(Global.getPinkScore())
		
	if get_name() == "Diminuir_Rosa":
		if Global.getPinkScore() > 0:
			Global.addPink(-1)
			pinkLabel.text = str(Global.getPinkScore())
	if get_name() == "Somar_Azul":
		Global.addBlue(1)
		blueLabel.text = str(Global.getBlueScore())
	if get_name() == "Diminuir_Azul":
		if  Global.getBlueScore() > 0:
			Global.addBlue(-1)
			blueLabel.text = str(Global.getBlueScore())
			
