extends AudioStreamPlayer

const music = preload("res://Assets/Music/MusicaJogo.ogg")

func _play_music(music:AudioStream, volume = 0.0):
	if stream == music:
		return
	
	stream = music
	volume_db = volume
	play()

func play_music_level():
	_play_music(music)
	
func pause_music():
	stop()
	
func unpause_music():
	if !playing:
		play()
	
