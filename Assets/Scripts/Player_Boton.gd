extends TouchScreenButton

## ESTE SCRIPT SE DECICA A:
## SI MOSTRAR EL BOTON HABILITADO O NO, ADEMAS DE COLOCARLE EL 
## NUMERO DE JUGADOR QUE ES EL BOTON Y DE TENER QUE ESPERAR UNA
## SEÑAL PARA SER MEDIFICADO EN LO DICHO ANTERIORMENTE

# es el encardo de exportar la variable Num_jugador para asignar un 
# valor en el editor a cada boton por default
@export var num_jugador: int = 1

# definir variables importantes para rutas
var main
var boton_negro
var num_player_label
var main_code
var menu_panel

# definir las rutas que guardaran las variables.
func _carga_de_objetos():
# boton principal
	main = $"."
# boton desabilitado
	boton_negro = $Boton_Negro
# numero de jugador ( label )
	num_player_label = $Num_Player
# codigo principal
	main_code = $"../.."
# panel que aparece en el menu
	menu_panel = $"../Botones_ocultar desafio/paneles"


func _ready() -> void:
	_carga_de_objetos()

# al iniciar se llamaran estas funciones:
# si aparece o desaparece el Boton_Negro ( si se puede o no dar cliks )
	_habilitador_de_boton(0)
# simplemente se le asigna el número que dice que jugador es.
	_numero_jugador(0)

# signals conectadas que espera una señal para hacer algo especifico
# ( llaman a una func y le envian un dato )
	main_code.aparecer_botones.connect(_habilitador_de_boton)
	menu_panel.numerito_boton_jugador.connect(_numero_jugador)


# encargado de dar orden si aparece para dar click o no
# ( Boton en negro = no, Boton en amarillo = si )
func _habilitador_de_boton(
_a # variable que se encarga de decir si algo aparece o no
):
# Boton desabilitado:
	if _a == 0:
		main.self_modulate.a = 0 # el alfa es 0 y lo desaparece
		boton_negro.visible = true
		num_player_label.visible = true

# Boton habilitado:
	else:
		main.self_modulate.a = 1 # el alfa es 1 y lo aparece
		boton_negro.visible = false
		num_player_label.visible = false


# Logica de actualización de número de jugador
# ( cuando esta desabilitado el boton se muestra )
func _numero_jugador(
_a # que tipo de numero de jugador muestra
# 0 = el de default del editor
# 1 = el de equipos y se basa en el de default.
):
# que se muestre el valor por default del editor.
	if _a == 0:
		num_player_label.text = str(num_jugador)

# que se muestre el numero de equipo (vs) según si 
# el numero de default del editor es impar o no
	if _a == 1:
		if num_jugador % 2 == 0: # par
			num_player_label.text = str(2)
		else: # impar
			num_player_label.text = str(1)
