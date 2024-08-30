extends Label

var defaultValue = 15
var time = defaultValue
var format_s = "%d"
var format_s2 = "0%d"
var format_m = "%d:%d"
var format_m2 = "%d:0%d"
var timer_on = false

func _process(delta):
	if(timer_on):
		time-=delta
		if(time<60):
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
		else:
			time = defaultValue
			timer_on = false
	pass

func _on_button_pressed():
	if(!timer_on):
		timer_on = true
	else:
		timer_on = false
	pass # Replace with function body.
