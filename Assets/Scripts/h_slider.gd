extends HSlider

var tocando: bool = false


func _gui_input(event):

	if event is InputEventScreenTouch:

		if event.pressed:
			tocando = true
			_actualizar_valor(event.position.x)
		else:
			tocando = false

	elif event is InputEventScreenDrag and tocando:

		_actualizar_valor(event.position.x)


func _actualizar_valor(posicion_x: float) -> void:

	var porcentaje: float = clamp(
		posicion_x / size.x,
		0.0,
		1.0
	)

	value = lerpf(
		float(min_value),
		float(max_value),
		porcentaje
	)
	#print("TOUCH HSLIDER:", value)
