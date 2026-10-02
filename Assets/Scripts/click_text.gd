extends Label

# varibles necesarias para el +1
# cuanto avanzara y cuanto dura:
@export var altura: float = 80.0
@export var duracion: float = 0.5

# se supone que un script externo ejecutara esta linea de codigo
# que en resumen se basa en subir, desvanecimiento y eliminacion del objeto en la
# escena.
func animar():
	var posicion_inicial = position
	var tween = create_tween()
	tween.set_parallel(true)

	## Subir
	tween.tween_property(
		self,
		"position:y",
		posicion_inicial.y - altura,
		duracion
	).set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_OUT)

	## Desaparecer
	tween.tween_property(
		self,
		"modulate:a",
		0.0,
		duracion
	)

	## Esperar a que terminen las animaciones
	tween.set_parallel(false)

	## Eliminar el Label
	tween.tween_callback(queue_free)
