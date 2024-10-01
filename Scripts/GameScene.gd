extends Control
@onready var n = get_name()
@onready var blue = get_node("BG-Azul")
@onready var pink = $"BG-Rosa"
@onready var escolheRosa = $AvisoCartaRosa
@onready var escolheAzul = $AvisoCartaAzal
@onready var crono =$Cronometro
@onready var tutorial = $TutorialScene
@onready var winnerBlue = $VencedorScene
@onready var winnerPink = $VencedorScene2
var timer = 0 



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	changeBackGround()
	if n == "GameScene": return
	if Global.showCrono:
		crono.visible = true
	else:
		crono.visible = false
		
	if Global.isTutorialVisi:
		tutorial.visible = true
	else:
		tutorial.visible = false
		
		
	if Global.hasAWinner:
		if Global.pinkScore >=8:
			winnerPink.visible = true
		else:
			winnerBlue.visible = true
	
	
func changeBackGround():
	if n == "GameScene": return
	if Global.isPinkTurn:
		blue.visible = false
		pink.visible = true
		escolheAzul.visible = false
		escolheRosa.visible = true
		pass
	else:
		pink.visible = false
		blue.visible = true
		escolheAzul.visible = true
		escolheRosa.visible = false
		pass
		

