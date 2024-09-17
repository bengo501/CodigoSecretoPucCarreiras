extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	var node = load(Global.map)
	var cena = node.instantiate()
	add_child(cena)
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
