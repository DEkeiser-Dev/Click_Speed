extends Sprite2D

# variable que apuntara al panel
var panel

# datos importantes para la grafica
# ( en su mayoria son labels )
var eje_x
var eje_y
var cps
var sec
var num_seg
var num_cps

# lineas que representaran el jugador(es)/equipo(s)
var linea
var linea_2
var linea_3
var linea_4

# label(texto) de jugador(es)/equipo(s)
var label_player_1
var label_player_2
var label_player_3
var label_player_4

# contenedor de datos de grafica por jugador
# ( estructura por jugador 
# [
# "CPS": [], # lista de datos, por segundo ( 0 - X )
# "M_Clicks": 0, # maximo de click registrado
# "M_Seg": 0 # maximo de segundos ( X )
# ]
var players := [
	[], # player 1
	[], # player 2
	[], # player 3
	[] # player 4
	]

# todos los colores posibles para la grafica
var Colors = {
	"rojo": Color.RED,
	"rojo_p": Color.DARK_RED,
	"azul": Color.BLUE,
	"azul_p": Color.NAVY_BLUE,
	"azul_violeta": Color.MEDIUM_SLATE_BLUE,
	"blanco": Color.WHITE,
	"gris_p": Color.DIM_GRAY,
	"negro": Color.BLACK,
	"amarillo": Color.YELLOW,
	"verde": Color.MEDIUM_SPRING_GREEN,
	"verde_p": Color.LIME_GREEN,
	"naranja": Color.ORANGE_RED,
	"Morado": Color.MEDIUM_PURPLE
}

# listado de elementos en su orden
var lineas_Array := []
var labels_Array := []
var colors_Array := []

# variables que diran que color sera la linea o el punto
# ( dependiendo del jugador etc )
var Color_Line2D_Is = "verde"
var Color_Point_Is = "verde_p"


# cargar los objetos en variables.
func _cargar_objetos():
	panel = self
	eje_x = $"EJE X"
	eje_y = $"EJE Y"
	cps = $cps
	sec = $sec
	num_seg = $num_seg
	num_cps = $num_cps
	linea = $Line2D
	linea_2 = $Line2D2
	linea_3 = $Line2D3
	linea_4 = $Line2D4
	label_player_1 = $Jugadores/J1
	label_player_2 = $Jugadores/J2
	label_player_3 = $Jugadores/J3
	label_player_4 = $Jugadores/J4
	lineas_Array = [ linea, linea_2, linea_3, linea_4 ]
	labels_Array = [ label_player_1, label_player_2, label_player_3, label_player_4 ]
	colors_Array = [ Colors["verde_p"], Colors["rojo_p"], Colors["gris_p"], Colors["azul_p"] ]


# al iniciar :V
func _ready() -> void:
	_cargar_objetos()

	# se hace la conectada a gui_input y si detecta algo
	# manda los datos asignados en el .bind a la func
	# _presionar_label
	label_player_1.gui_input.connect(_presionar_label.bind(1,label_player_1))
	label_player_2.gui_input.connect(_presionar_label.bind(2,label_player_2))
	label_player_3.gui_input.connect(_presionar_label.bind(3,label_player_3))
	label_player_4.gui_input.connect(_presionar_label.bind(4,label_player_4))


# graficar un solo jugador
func _Graficar(
_x # diccionario del jugador
):
# mostrar los labels importantes
	_mostrar_ocultar_grafica(true)

# limpiar los puntos anteriores ( si hay )
	_limpiar_poligonos()

# asignador de color ( base )
	_Elegir_Color(0)

# dibuja la grafica con los datos que le da la func 
# _grafica_logica_matematica con el diccionario _x
# y usa la linea base
	_dibujar_grafica(_grafica_logica_matematica(_x), linea)

# asignar al label_1 con el ID de player_1
# de resto los demas vacios.
	label_player_1.text = "player_1"
	label_player_2.text = ""
	label_player_3.text = ""
	label_player_4.text = ""


# grafica hazta 4 jugadores, ademas de mandar a las demas funciones a dibujar lo que ella le mandaron
# y tiene un valor especial que le dice si hay puntos en esa graficacion o no ( _p )
func _Grafica_Comparativa(
_players, # cuantos jugadores se mostraran
_x, # diccionario player_1
# ( se colocan en vacio ({}) para no tener errores y tenerlo por default )
_y = {}, # diccionario player_2
_z = {}, # diccionario player_3
_w = {}, # diccionario player_4
_p = 0 # si se hace los puntos en la grafica o no
):
# mostrar los labels importantes
	_mostrar_ocultar_grafica(true)

# limpiar los puntos anteriores ( si hay )
	_limpiar_poligonos()

# guarda los diccionarios en el Array de players y ademas
# busca en los diccionarios datos el "M_Clicks" mas alto y lo coloca
# en cada diccionario del array para poder hacer mejores comparaciones
	_convercion_datos_player(_players, _x, _y, _z, _w)

# limitar los datos de 1-4, si es mejor a 1 sera 1 o mayor a 4 sera 4.
	_players = clampi(_players, 1, 4)

# se restablece el estado original de las lineas ( vacias o sin nada )
	for _line in [linea, linea_2, linea_3, linea_4]:
		_line.clear_points()

# limpia los label de los jugadores
	label_player_1.text = ""
	label_player_2.text = ""
	label_player_3.text = ""
	label_player_4.text = ""


# se manda a crear las lineas y demas dependiendo de player
	for i in _players:
		var _v = players[i] # diccionario de player
		var _u = lineas_Array[i] # linea de player
		
		# basicamente hace esto:
		# ( estos son los ID y seran para que mostrar el label )
		# i == 0: [ "player_1", "", "", ""]
		# i == 1: [ "TEAM1", "TEAM2", "", ""]
		# i == 2: [ "player_1", "player_2", "player_3", ""]
		# i == 3: [ "player_1", "player_2", "player_3", "player_4"]
		label_player_1.text = "TEAM1" if i == 1 else "player_1"
		if i == 0:
			label_player_2.text = ""
		elif i != 0:
			label_player_2.text = "TEAM2" if i == 1 else "player_2"
		label_player_3.text = "" if i < 2 else "player_3"
		label_player_4.text = "" if i < 3 else "player_4"

	# si _v no es un diccionario entonces se salta esta iteracion y continua
	# ( y eso hace que lo siguiente no se ejecute )
		if not _v is Dictionary:
			continue

	# asignador de color ( i )
		_Elegir_Color(i)

	# dibuja la grafica con los datos, y como es for, esto hace que el maximo sea 4
	# llamados para cada linea.
		_dibujar_grafica(_grafica_logica_matematica(_v), _u, _p)


# guarda los diccionarios en el Array de players y ademas
# busca en los diccionarios datos el "M_Clicks" mas alto y lo coloca
# en cada diccionario del array para poder hacer mejores comparaciones
func _convercion_datos_player(
_players, # cuantos jugadores se mostraran
_x, # diccionario player_1
_y, # diccionario player_2
_z, # diccionario player_3
_w  # diccionario player_4
):
	# maximo ( lit ) de click 
	# encargada de guaradar el "M_Clicks" mas grande
	var _peak = 0

 # limitar los valores de (1-4)
	_players = clampi(_players, 1, 4)

 # asignar los valores de los diccionarios en el Array de diccionarios 
# que representan los jugadores
	players[0] = _x
	players[1] = _y
	players[2] = _z
	players[3] = _w

# hace que todos los diccionarios de los jugadores tengan
# el mismo maximo de click, amacenando el valor mas algo si suporo
# al anterior y despues a todos se les iguala a ese valor para 
# asi poder comparar mejor 
	for i in _players:
		# si ese jugador en "M_Clicks" es mayor a maximo
		if players[(i)]["M_Clicks"] > _peak:
			# maximo se actualiza con ese dato
			_peak = players[(i)]["M_Clicks"]

	for i in _players:
		# todos los "M_Clicks" seran el maximo registrado
		players[(i)]["M_Clicks"] = _peak


# func para asignar el color del label y el color de los puntos
# cosa muy importante la vdd para diferenciar los datos
func _Elegir_Color(
_x # numero de que representara que color dar.
):
	match _x:
		# color usado para jugador 2 o team 2
		1:
			Color_Line2D_Is = "rojo"
			Color_Point_Is = "rojo_p"
		# color usado para jugador 3
		2:
			Color_Line2D_Is = "amarillo"
			Color_Point_Is = "gris_p"
		# color usado para jugador 4
		3:
			Color_Line2D_Is = "azul"
			Color_Point_Is = "azul_p"
		# color base
		_:
			Color_Line2D_Is = "verde"
			Color_Point_Is = "verde_p"


# mostrar/ocultar los datos ( label ) cuando se inicia la grafica
# o cuando se necesita y ya
func _mostrar_ocultar_grafica( _bool ):
	panel.self_modulate = Color.WHITE if _bool else Color(1, 1, 1, 0)
	eje_x.visible = true if _bool else false
	eje_y.visible = true if _bool else false
	cps.visible = true if _bool else false
	sec.visible = true if _bool else false
	num_seg.visible = true if _bool else false
	num_cps.visible = true if _bool else false


# basicamente hace que el diccionario dado sea compatible con la logica del sistema
# normaliza las coordenadas, crea las coordenadas de los segmentos en X Y
# ( normalizados y originales ) y retorna los datos
func _grafica_logica_matematica(_x):
# lo que mira un lado del panel ( para hacer una conversion )
	var _tamaño_panel = 1.0

# se guarda los datos ( maximo de click 
#  y en seg se resta 1 porque es num_seg + 0 y despues se busca
# el valor mas grande de 0 a x)
## maxi(a,b) BUSCA EL VALOR MAS ALTO DE LOS 2 VALORES
	var _n = int(_x["M_Clicks"])
	var _seg = maxi(_x["CPS"].size() - 1, 0)

# se actualiza los labels para la grafica
# ( click maximo y maximo de segundos )
	num_cps.text = str(_n)
	num_seg.text = str(int(_x["M_Seg"]))

# listas temporales( locales ) para segmentos
	var _Y = {}
	var _X = {}

# de diccionario a diccionario con datos como en que lugar se ponen los
# segmentos de divicion para ser mas dinamico
	var _vector2 = {
		"coordenadas": {}, # guarda vector2
		"segmentoX": {}, # lista de coordenadas de segmeto X normalizados
		"segmentoY": {}, # lista de coordenadas de segmeto Y normalizados
		"valoresX": {}, # lista de coordenadas de segmeto X original
		"valoresY": {} # lista de coordenadas de segmeto Y original
	}

 # valor especializado para los 2 segmentos
	var _trayectoria = 0

# 2 vueltas para los 2 segmentos
	for i in 2:
		# si trayectoria es 0 sera igual _n, de lo contrario _seg
		var _N = _n if _trayectoria == 0 else _seg

		# guarda las listas de manera local y de manera "guardarla para mas adelante"
		# y obviamente llama a la func especializada para crear las coorde de los segmentos
		if _trayectoria == 0:
			_X = _metodos_de_divicion_segmentos(_N)
			_vector2["valoresX"] = _X.duplicate()
		else:
			_Y = _metodos_de_divicion_segmentos(_N)
			_vector2["valoresY"] = _Y.duplicate()

		# normalizar los valores locales de 0 - 1
		if _trayectoria == 0:
			var _ultimo = _X[_X.size() - 1]
			for e in _X.size():
				_X[e] = float(_X[e]) / maxf(_ultimo, 1.0) * _tamaño_panel
		else:
			var _ultimo = _Y[_Y.size() - 1]
			for e in _Y.size():
				_Y[e] = float(_Y[e]) / maxf(_ultimo, 1.0) * _tamaño_panel

		# cambio para el siguiente segmento
		_trayectoria += 1

	for u in range(_x["CPS"].size()):
		var X = float(u) / maxf(float(_seg), 1.0)
		var Y = float(_x["CPS"][u]) / maxf(float(_n), 1.0)
		_vector2["coordenadas"][u] = Vector2(X, Y)

	# guarda las coordenadas de los segmetos normalizados en el diccionario.
	for u in range(_Y.size()):
		_vector2["segmentoY"][u] = _Y[u]

	for u in range(_X.size()):
		_vector2["segmentoX"][u] = _X[u]

	return _vector2


# logica para la creacion de listas para los segmetos
func _metodos_de_divicion_segmentos(
_c = 0 # cantidad
):
	# 0 metodo robar metodo
	# 1 metodo un segmento
	# 2 metodo dos segmentos
	# 3 metodo tres segmentos
	# 4 metodo cuatro segmentos
	# 5 metodo cinco segmentos
	var _x = 1 # metodo
	var _list = {} # listado de coordenadas
	# si cantidad esta de 1 - 10
	if _c < 11:
		# si la cantidad es mayor a 3
		if _c > 3:
			@warning_ignore("integer_division")
			# modo sera igual a la divicion de la cantidad si _c % 1
			# de lo contrario 0
			_x = _c / 2 if _c % 1 else 0
		else:
			# modo es igual a cantidad
			_x = _c
	else:
		# ramdom de 0.0 a 1.0
		var _ramdom = randf_range(0.0,1.0)
		# _c es multiplo de 3 y tambien de 5
		if _c % 3 == 0 and _c % 5 == 0:
			# 3 26% 5 74%
			_x = 3 if _ramdom < 0.26 else 5
		# _c es multiplo de 5
		elif _c % 5 == 0:
			_x = 5
		# _c es multiplo de 3
		elif _c % 3 == 0:
			_x = 3
		else:
			_x = 4

# formar las listas
	match _x:
		# si metodo es 0 se restara 1 en la cantidad y se volvera a mirar
		# el metodo, despues se colocara 0 1 y se quita el primer numero
		# cuando vuelve a mirar y se fuciona
		# list [ 0, 1, ((listado - el primer valor) + 1 cada index)]
		0:
			var _c2 = _metodos_de_divicion_segmentos(_c-1)
			# se suma +1 porque al agregar valores antes el tamaño como no es
			# 0-x es de 1-x o sea ya tiene un numero de mas pero falta el otro
			for i in (_c2.size() + 1):
				# se coloca el 0 y el 1
				if i == 0:
					_list[i] = 0
					continue
				elif i == 1:
					_list[i] = 1
					continue
				# se resta uno porque el tiene un desfase, (la suma del 1) y no se suma 2 porque
				# pues el primer valor ( index 0 ) es 0 y no vale la pena. y se suma 1
				# porque se agrego el 1 asi que todos se suman 1, porque como es unas coordenadas
				# [ 0, 2, 2 ] no puede ser [ 0, 1, 2, 2 ] porque seria lo mismo, entonces seria
				# [ 0, 1+1, 2+1, 2+1 ]
				_list[i] = _c2[ i - 1 ] + 1

		# si es uno pues solo puede existir esto teoricamente
		1:
			_list = [0,1]

		# los demas metodos
		_:
			for i in range(_x + 1):
				_list[i] = int(float(_c) * i /_x)
	return _list


# func para decir como se define o inicia una linea
# ademas de decirle que dibuje
func _datos_linea(
_x, # crear linea o dibujar
_y, # la linea como tal
# desde la poscion 0.0 del padre se mueve a esa coordenada, el 0 del padre es su centro practicamente
# de su plano cartesiano ps 
_z = Vector2.ZERO # coordenadas
):
	# representa la linea
	var line_x = _y

	if _x == 0:
		# parametros necesarios antes de colocar el punto
		# el color por determinado
		line_x.default_color = Colors[Color_Line2D_Is]

		# se coloca en la posicion 0.0 del padre
		line_x.position = Vector2.ZERO

		# su escala sera ( 1, 1 )
		line_x.scale = Vector2.ONE

		# se limpia la linea
		line_x.clear_points()

		# grosor de la linea
		line_x.width = 1.6

		# bordes suaves activado
		line_x.antialiased = true

		# union redondeada
		line_x.joint_mode = Line2D.LINE_JOINT_ROUND
		
		# inicia o finaliza redondeo
		line_x.begin_cap_mode = Line2D.LINE_CAP_ROUND
		line_x.end_cap_mode = Line2D.LINE_CAP_ROUND
	else:
		# dibuja la linea con las coordenadas
		# mas exactamente las de un punto
		line_x.add_point(_z)



func _dibujar_grafica(_vector2, _linea, _p = 0) -> void:
	var _coordenadas = _vector2["coordenadas"]
	var _segmento_x = _vector2["segmentoX"]
	var _segmento_y = _vector2["segmentoY"]

	var _tamaño_panel = panel.texture.get_size().x
	var _mitad = _tamaño_panel / 2.0

	_crear_segmentos_dinamicos(panel, _segmento_x.size(), _segmento_y.size())
	_actualizar_visibilidad_segmentos(panel, _segmento_x.size(), _segmento_y.size())

	_datos_linea(0, _linea)

	for u in _coordenadas:
		var _coordenada = _coordenadas[u]
		var _posicion = Vector2(
			(_coordenada.x * _tamaño_panel) - _mitad,
			_mitad - (_coordenada.y * _tamaño_panel)
		)

		_datos_linea(1, _linea, _posicion)

		if _p == 0:
			var _punto = Polygon2D.new()
			var _radio = 6.0
			var _vertices = PackedVector2Array()

			for i in 16:
				var _angulo = (TAU * i) / 16.0
				_vertices.append(Vector2(cos(_angulo), sin(_angulo)) * _radio)

			_punto.polygon = _vertices
			_punto.color = Colors[Color_Point_Is]
			_punto.position = _posicion
			_punto.scale = Vector2(
				1.0 / maxf(absf(panel.scale.x), 0.001),
				1.0 / maxf(absf(panel.scale.y), 0.001)
			)
			panel.add_child(_punto)

	var _escala_x = maxf(absf(panel.scale.x), 0.001)
	var _escala_y = maxf(absf(panel.scale.y), 0.001)
	var _ancho_real = _tamaño_panel * _escala_x
	var _alto_real = _tamaño_panel * _escala_y
	var _mitad_x = _ancho_real / 2.0
	var _mitad_y = _alto_real / 2.0

	for u in range(_segmento_y.size()):
		var _seg_y = panel.get_node("EJE Y/" + str(u))
		var _valor = float(_segmento_y[u])
		_seg_y.position.x = (((_valor * _ancho_real) - _mitad_x) / _escala_x)

	for u in range(_segmento_x.size()):
		var _seg_x = panel.get_node("EJE X/" + str(u))
		var _valor = float(_segmento_x[u])
		_seg_x.position.y = ((_mitad_y - (_valor * _alto_real)) / _escala_y)

	_actualizar_richs_segmentos(panel, _vector2)



func _crear_segmentos_dinamicos(_panel, _cantidad_x, _cantidad_y):
	var _eje_x = _panel.get_node("EJE X")
	var _eje_y = _panel.get_node("EJE Y")

	for _hijo in _eje_x.get_children():
		if _hijo.name.is_valid_int() and _hijo.name != "1":
			_eje_x.remove_child(_hijo)
			_hijo.free()
		elif _hijo.name.begins_with("o_") and _hijo.name != "o_1":
			_eje_x.remove_child(_hijo)
			_hijo.free()

	for _hijo in _eje_y.get_children():
		if _hijo.name.is_valid_int() and _hijo.name != "1":
			_eje_y.remove_child(_hijo)
			_hijo.free()
		elif _hijo.name.begins_with("o_") and _hijo.name != "o_1":
			_eje_y.remove_child(_hijo)
			_hijo.free()

	var _plantilla_x = _eje_x.get_node("1")
	var _plantilla_y = _eje_y.get_node("1")

	for i in range(_cantidad_x + 1):
		if not _eje_x.has_node(str(i)):
			var _nuevo = _plantilla_x.duplicate()
			_nuevo.name = str(i)
			_eje_x.add_child(_nuevo)

	for i in range(_cantidad_y + 1):
		if not _eje_y.has_node(str(i)):
			var _nuevo = _plantilla_y.duplicate()
			_nuevo.name = str(i)
			_eje_y.add_child(_nuevo)



func _actualizar_visibilidad_segmentos(_panel, _cantidad_x, _cantidad_y):
	var _eje_x = _panel.get_node("EJE X")
	var _eje_y = _panel.get_node("EJE Y")

	for _hijo in _eje_x.get_children():
		if _hijo.name.is_valid_int():
			_hijo.visible = int(_hijo.name) <= _cantidad_x

	for _hijo in _eje_y.get_children():
		if _hijo.name.is_valid_int():
			_hijo.visible = int(_hijo.name) <= _cantidad_y



func _actualizar_richs_segmentos(_panel, _vector2):
	var _segmento_x = _vector2["segmentoX"]
	var _segmento_y = _vector2["segmentoY"]
	var _valores_x = _vector2["valoresX"]
	var _valores_y = _vector2["valoresY"]

	var _escala_x = maxf(absf(_panel.scale.x), 0.001)
	var _escala_y = maxf(absf(_panel.scale.y), 0.001)
	var _tamaño_panel = _panel.texture.get_size().x
	var _ancho_real = _tamaño_panel * _escala_x
	var _alto_real = _tamaño_panel * _escala_y
	var _mitad_x = _ancho_real / 2.0
	var _mitad_y = _alto_real / 2.0

	var _eje_y = _panel.get_node("EJE Y")
	var _eje_x = _panel.get_node("EJE X")
	var _plantilla_y = _eje_y.get_node("o_1")
	var _plantilla_x = _eje_x.get_node("o_1")

	for _hijo in _eje_y.get_children():
		if _hijo.name.begins_with("o_") and _hijo.name != "o_1":
			_eje_y.remove_child(_hijo)
			_hijo.free()

	for _hijo in _eje_x.get_children():
		if _hijo.name.begins_with("o_") and _hijo.name != "o_1":
			_eje_x.remove_child(_hijo)
			_hijo.free()

	for u in range(_segmento_y.size()):
		var _nombre = "o_" + str(u)
		var _rich

		if _nombre == "o_1":
			_rich = _plantilla_y
		else:
			_rich = _plantilla_y.duplicate()
			_rich.name = _nombre
			_eje_y.add_child(_rich)

		var _valor = float(_segmento_y[u])
		_rich.text = str(_valores_y[u])
		_rich.position.x = ((_valor * _ancho_real) - _mitad_x) / _escala_x - 4.0
		_rich.visible = true

	for u in range(_segmento_x.size()):
		var _nombre = "o_" + str(u)
		var _rich

		if _nombre == "o_1":
			_rich = _plantilla_x
		else:
			_rich = _plantilla_x.duplicate()
			_rich.name = _nombre
			_eje_x.add_child(_rich)

		var _valor = float(_segmento_x[u])
		_rich.text = str(_valores_x[u])
		_rich.position.y = (_mitad_y - (_valor * _alto_real)) / _escala_y - 5.0
		_rich.visible = true

	for _eje in [_eje_x, _eje_y]:
		for _hijo in _eje.get_children():
			if not _hijo.name.is_valid_int():
				continue

			var _label = _eje.get_node_or_null("o_" + _hijo.name)
			_hijo.visible = _label != null and _label.visible


# func para eliminar los puntos de la grafica
# para mostrar otra grafica :D
func _limpiar_poligonos():
	# cada vuelta el _hijo sera
	# apuntando a algun hijo del panel
	for _hijo in panel.get_children():
		# si ese hijo es tipo Polygon2D
		if _hijo is Polygon2D:
			# ese hijo se borra o se libera.
			_hijo.queue_free()


# func para verificar si se le dio click izquierdo
# y mandar los datos a _si_label_esta_visible
func _presionar_label(
event: InputEvent, # ni lo explicare :/, aver.
nombre: int, # numero de jugador
node = Label # label el cual le precionaste o no
) -> void:
	# click izquierdo
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		# si esta precionado
		if event.pressed:
			_si_label_esta_visible(nombre,1,node)
		# si no esta precionado
		else:
			_si_label_esta_visible(nombre,0,node)


# func para ocultar las lineas y los puntos de las graficas
# ( solo se enfoca una solamente y las otras se ponen opacas )
func _si_label_esta_visible(
_num, # numero de jugador de label que le diste click
_si = 1, # si esta precionado o no ( 0/1 == false/true )
_node = Label # label del que le diste click
):
# dependiendo de el _num se asigna a cada variable los datos
# que seran utilizados para desaparecerlos despues.

# basicamente los 3 grupos ancontinuacion al baserse por el num
# lleguan a la misma secuencia, solo cambia a que array le dicen:

# num 1: 1 2 3
# num 2: 0 2 3
# num 3: 0 1 3
# num 4: 0 1 2
 
# varibles de lineas
	var _x = lineas_Array[1] if _num < 2 else lineas_Array[0]
	var _y = lineas_Array[2] if _num < 3 else lineas_Array[1]
	var _z = lineas_Array[3] if _num < 4 else lineas_Array[2]

# variables de labels
	var _a = labels_Array[1] if _num < 2 else labels_Array[0]
	var _b = labels_Array[2] if _num < 3 else labels_Array[1]
	var _c = labels_Array[3] if _num < 4 else labels_Array[2]

# variables de colores de los puntos
	var _d = colors_Array[1] if _num < 2 else colors_Array[0]
	var _e = colors_Array[2] if _num < 3 else colors_Array[1]
	var _f = colors_Array[3] if _num < 4 else colors_Array[2]

# listado de variables
	var _abecedario_Array := [ _x, _y, _z, _a, _b, _c, _d, _e, _f ]

# escoje la variable que representa ( representante )
	var _w

# para continuar la logica se debe de cumplir la condicion de
# " si el texto del nodo es distinto a ("") " continuara, ya que
# si no se cumple significara q ese nodo ( que es un label )
# no esta presente en ese modo ( si estas en el modo 3, obviamente 
# no se cumplira si le das al nodo 4 que esta vacio )
	if _node.text != "":
		# el _abecedario_Array.size() son los elementos que asignamos anteriormente
		for i in (_abecedario_Array.size()):
			# cada vez que se haga una "vuelta", obviamente i aumenta
			# pero justo despues se asigna a la variable _w un valor
			# del Array _abecedario_Array
			_w = _abecedario_Array[i]

# si _w es distinto a ser un color
# ( entonces es una linea o un label )
			if !(_w is Color):
				# el _si es "esta precionado"
				# opacar el alpha ( 0.24 )
				# normalizar el alpha. ( 1 )
				_w.modulate.a = 0.24 if _w.visible and _si == 1 else 1.0

# si _w es color ( entonces este elif sera para los puntos de las graficas)
			elif _w is Color:
				# se daran vueltas y cada vez el _hijo
				# sera asignado aun hijo del panel
				for _hijo in panel.get_children():
					# si ese _hijo es de tipo Polygon2D y si tiene el mismo color que _w
					if _hijo is Polygon2D and _hijo.color == _w:
							# opacar el alpha ( 0.24 )
							# normalizar el alpha. ( 1 )
							_hijo.modulate.a = 0.24 if _si == 1 else 1.0
