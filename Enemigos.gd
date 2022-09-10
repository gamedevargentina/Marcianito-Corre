extends Node2D


var velocidad = 240


func _process(delta):
	
	position.x -= velocidad * delta
	if position.x < -2624:
		position.x = 0
