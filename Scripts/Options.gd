extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Global.isOptionsVisi:
		visible = true
	else:
		visible = false
	pass


func _on_botao_desligar_som_pressed():
	AudioPlayer.pause_music()


func _on_botao_ligar_som_pressed():
	AudioPlayer.unpause_music()
