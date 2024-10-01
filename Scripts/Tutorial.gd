extends Node2D
@onready var tutorial = $TutorialScene

# Called when the node enters the scene tree for the first time.
func _ready():
	AudioPlayer.play_music_level()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.isTutorialVisi:
		tutorial.visible = true
	else:
		tutorial.visible = false
