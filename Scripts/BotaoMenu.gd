extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_pressed():
	SceneTransition.change_scene("res://Scenes/CenasJogo/MenuScene.tscn")
	Global.reset()


func _on__pressed():
	pass # Replace with function body.
