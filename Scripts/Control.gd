extends Control

func _ready():
	var button = Button.new()
	button.text = "Começar"
	button.pressed.connect(self._button_pressed)
	add_child(button)

func _button_pressed():
	# Toca a animação de fade-out
	$AnimationPlayer.play("fade_out")
	# Espera a animação terminar antes de mudar de cena
	await $AnimationPlayer.animation_finished
	# Carrega a cena principal do jogo
	get_tree().change_scene("res://Scenes/MenuScene.tscn")
