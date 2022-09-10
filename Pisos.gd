extends Node2D


var velocidad = 240


func _process(delta):
	
	position.x -= velocidad * delta
	if position.x < -1024:
		position.x = 0
		print("vuelvo el piso a 0")
