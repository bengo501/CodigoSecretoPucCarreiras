extends Control

# Ola
func _ready():
	pass

#func _button_pressed():
	## Toca a animação de fade-out
	#$AnimationPlayer.play("fade_out")
	## Espera a animação terminar antes de mudar de cena
	#await $AnimationPlayer.animation_finished
	## Carrega a cena principal do jogo
	#get_tree().change_scene("res://Scenes/MenuScene.tscn")


func _on_pressed():
	get_tree().change_scene_to_file("res://Scenes/CenasJogo/GameScene.tscn")
