extends TouchScreenButton

@export var valiable: int = 1

func _ready() -> void:
	_aparecer(0)
	_numerito(0)
	$"../..".aparecer_botones.connect(_aparecer)
	$"../Botones_ocultar desafio/paneles".numerito_boton_jugador.connect(_numerito)

func _aparecer(_a):
	if _a == 0:
		$".".self_modulate.a = 0 
		$oscuridad.visible = true
		$num.visible = true
	else:
		$".".self_modulate.a = 1
		$oscuridad.visible = false
		$num.visible = false

func _numerito(_a):
	if _a == 0:
		$num.text = str(valiable)
	if _a == 1:
		if valiable % 2 == 0:
			$num.text = str(2)
		else:
			$num.text = str(1)
