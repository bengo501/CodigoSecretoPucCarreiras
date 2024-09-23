extends Panel
@onready var pink = $"Equipe Rosa"
@onready var blue = $"Equipe Azul" 

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
	pass
