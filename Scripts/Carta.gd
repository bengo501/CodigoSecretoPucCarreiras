extends Button
@onready var blue = $Panel/CardBackAzul
@onready var locked = $Panel/Cor_Cinza
var acao
var type = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	match Global.getNumberCard():
		0:
			acao = $Panel/TipoAction_Mimica
			type = 1
		1:
			acao = $Panel/TipoAction_Desenho
			type = 2
		2:
			acao = $Panel/TipoAction_Conceito
			type = 3
	if acao != null:
		acao.visible = true
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.isResetPress:
		if blue !=null && locked != null:
			blue.visible = true
			locked.visible = false
	pass


func _on_pressed():
	if Global.isResetPress: Global.isResetPress = false
	if Global.isLockPressed:
		if locked.visible:
			Global.addBlue(-1)
		else:
			Global.addBlue(1)
		blue.visible = !blue.visible
		locked.visible = !locked.visible
		return
		
	if locked.visible:
		return
	if !blue.visible:
		Global.cronoType = type
		Global.showCrono = true
	
	blue.visible = !blue.visible
	
	pass # Replace with function body.
