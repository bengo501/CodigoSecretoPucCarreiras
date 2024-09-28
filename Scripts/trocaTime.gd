extends Panel
@onready var pink = $"Equipe Rosa"
@onready var blue = $"Equipe Azul"
@onready var mimica =$"Atividade-Mímica"
@onready var desenho = $"Atividade-Desenho"
@onready var conceito = $"Atividade-Conceito"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Global.isPinkTurn:
		blue.visible = false
		pink.visible = true
	else:
		pink.visible = false
		blue.visible = true
	match Global.cronoType:
		1:
			mimica.visible = true
			conceito.visible = false
			desenho.visible = false
		2:
			desenho.visible = true
			conceito.visible = false
			mimica.visible = false
		3:
			conceito.visible = true
			mimica.visible = false
			desenho.visible = false
	pass
