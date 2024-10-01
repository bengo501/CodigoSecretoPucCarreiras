extends Label

var defaultValue = 60
var time = defaultValue
var format_s = "0:%d"
var format_s2 = "0:0%d"
var format_m = "%d:%d"
var format_m2 = "%d:0%d"
var paused = false


func _process(delta):
	if(!Global.timer_on):
		if Global.cronoType==1:
			time = 120
		else:
			time = 60
	if(time<60 && time>0):
		if(time>=10):
			text = format_s % time
		else:
			text = format_s2 % time
	elif(time>0):
		var m = time/60.0
		var s = fmod(time,60.0)
		if(s>=10):
			text = format_m % [m,s]
		else:
			text = format_m2 % [m,s]
	elif(time<=0):
		time = defaultValue
		Global.timer_on = false
		
	if(Global.timer_on && !paused):
		time-=delta
func _on_começar_pressed():
	if(!Global.timer_on):
		Global.timer_on = true
		paused = false
	else:
		paused = !paused
	pass 

