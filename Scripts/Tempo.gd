extends Label

var defaultValue = 2
var time = defaultValue
var format_s = "%d"
var format_s2 = "0%d"
var format_m = "%d:%d"
var format_m2 = "%d:0%d"


func _process(delta):
	if(Global.timer_on):
		print(time)
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
		time-=delta
	pass

func _on_começar_pressed():
	if(!Global.timer_on):
		Global.timer_on = true
	else:
		Global.timer_on = false
	pass 

