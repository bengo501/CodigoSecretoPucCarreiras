extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	var node = get_node(Global.map)
	add_child(node)


# Called every frame. 'delta' is the elapsed time since the previous frame.
