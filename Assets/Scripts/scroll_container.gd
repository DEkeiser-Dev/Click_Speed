extends ScrollContainer


var posicion_anterior: Vector2 = Vector2.ZERO
var acumulado: float = 0.0

# Velocidad que queda al soltar el dedo.
var velocidad_scroll: float = 0.0

# Qué tan rápido se detiene la inercia.
@export var friccion: float = 3400.0


func _ready():

	# Desactivar completamente el scroll horizontal.
	horizontal_scroll_mode = ScrollContainer.SCROLL_MODE_DISABLED

	# Configurar el tamaño de la barra vertical.
	var barra = $".".get_v_scroll_bar()
	barra.custom_minimum_size.x = 18


func _gui_input(event):

	# =========================
	# TOQUE
	# =========================

	if event is InputEventScreenTouch:

		if event.pressed:

			posicion_anterior = event.position
			acumulado = 0.0

			# Detener la inercia al volver a tocar.
			velocidad_scroll = 0.0


	# =========================
	# ARRASTRE
	# =========================

	elif event is InputEventScreenDrag:

		var movimiento: float = event.position.y - posicion_anterior.y

		acumulado += movimiento

		var desplazamiento_entero: int = int(acumulado)

		scroll_vertical -= desplazamiento_entero

		acumulado -= desplazamiento_entero

		posicion_anterior = event.position

		# Guardamos la velocidad del último movimiento
		# para producir la inercia al soltar.
		velocidad_scroll = movimiento * 60.0


func _process(delta):

	# =========================
	# INERCIA
	# =========================

	if abs(velocidad_scroll) > 1.0:

		# Continúa desplazándose después de soltar.
		scroll_vertical -= velocidad_scroll * delta

		# Frenado progresivo.
		velocidad_scroll = move_toward(
			velocidad_scroll,
			0.0,
			friccion * delta
		)

	else:
		velocidad_scroll = 0.0
