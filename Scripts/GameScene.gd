extends Control
@onready var n = get_name()
@onready var blue = get_node("BG-Azul")
@onready var blueB = $"BrasaoAzul"
@onready var pink = $"BG-Rosa"
@onready var pinkB = $BrasaoRosa
@onready var crono =$Cronometro
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
	
	
func changeBackGround():
	if n == "GameScene": return
	if Global.isPinkTurn:
		blue.visible = false
		blueB.visible = false
		pink.visible = true
		pinkB.visible = true
		pass
	else:
		pink.visible = false
		pinkB.visible = false
		blue.visible = true
		blueB.visible = true
		pass
		

