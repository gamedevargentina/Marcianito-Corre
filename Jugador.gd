extends Sprite


var gravedad = 20
var gravedad_acumulada = 0
var fuerza_salto = 800
var sobre_el_piso = false

func _physics_process(delta):
	
	
	if position.y >= 352:
		position.y = 352
		sobre_el_piso = true
		gravedad_acumulada = 0
	else:
		sobre_el_piso = false
		
#	if !sobre_el_piso:
		gravedad_acumulada += gravedad
	
	if Input.is_action_just_pressed("ui_accept") and sobre_el_piso:
		gravedad_acumulada = -fuerza_salto
	
	position.y += gravedad_acumulada * delta
	
