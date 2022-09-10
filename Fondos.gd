extends Node2D


var velocidad = 60


func _process(delta):
	
	position.x -= velocidad * delta
	if position.x < -1024:
		position.x = 0
