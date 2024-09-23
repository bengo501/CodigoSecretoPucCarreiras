extends Button
@onready var pink = $Panel/CardBackRosa
@onready var locked = $Panel/Cor_Cinza


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.isResetPress:
		if pink !=null && locked != null:
			pink.visible = true
			locked.visible = false
	pass


func _on_pressed():
	if Global.isResetPress: Global.isResetPress = false
	if Global.isLockPressed:
		if locked.visible:
			Global.addPink(-1)
		else:
			Global.addPink(1)
		pink.visible = !pink.visible
		locked.visible = !locked.visible
		return
	
	if locked.visible:
		return
	
	Global.showCrono = !Global.showCrono
	pass # Replace with function body.
