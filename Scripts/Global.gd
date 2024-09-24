extends Node
var pinkScore = 0
var blueScore = 0
var map = "res://Scenes/Mapas/Mapa5-2.tscn"
var maxNumMaps = 16
var rng = RandomNumberGenerator.new()
var isPinkTurn = true
var isLockPressed = false
var isOptionsVisi = false
var isCronoVisi = false
var showCrono = false
var timer_on = false
var isResetPress = false
var hasAWinner = false

func checkWinner():
	if pinkScore >= 8 || blueScore >=8:
		hasAWinner = true

func addPink(add:int):
	pinkScore+=add
	checkWinner()
	
func addBlue(add:int):
	blueScore+=add
	checkWinner()

func getPinkScore()->int:
	return pinkScore
	
func getBlueScore()->int:
	return blueScore
	
func reset():
	pinkScore = 0
	blueScore = 0
	isPinkTurn = true
	isLockPressed = false
	isOptionsVisi = false
	isCronoVisi = false
	showCrono = false
	timer_on = false
	isResetPress = false
	hasAWinner = false
	
func setMap(i:int)->void:
	if i > maxNumMaps:
		return
		
	if i == 1:
		rng.randomize()
		i = rng.randi_range(2, 16)
	map ="res://Scenes/Mapas/Mapa5-%d.tscn" % i
	
func changeTurn():
	isPinkTurn = !isPinkTurn
	
