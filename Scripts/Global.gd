extends Node
var pinkScore = 0
var blueScore = 0
var map = "res://Scenes/Mapas/Mapa5-2.tscn"
var maxNumMaps = 16
var rng = RandomNumberGenerator.new()
var isPinkTurn = true
   

func addPink(add:int):
	pinkScore+=add
func addBlue(add:int):
	blueScore+=add

func getPinkScore()->int:
	return pinkScore
	
func getBlueScore()->int:
	return blueScore
	
func reset():
	blueScore = 0
	pinkScore = 0
	
func setMap(i:int)->void:
	if i > maxNumMaps:
		return
		
	if i == 1:
		rng.randomize()
		i = rng.randi_range(2, 16)
	map ="res://Scenes/Mapas/Mapa5-%d.tscn" % i
	
func changeTurn():
	isPinkTurn = !isPinkTurn
	
