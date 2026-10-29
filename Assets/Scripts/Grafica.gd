
extends Sprite2D

var panel
var eje_x
var eje_y
var cps
var sec
var num_seg
var num_cps
var linea
var linea_2
var linea_3
var linea_4
var players = {
	"1" : [],
	"2" : [],
	"3" : [],
	"4" : []
}

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

var Color_Line2D_Is = "verde"
var Color_Point_Is = "verde_p"

func _ready() -> void:
	num_seg = $num_seg
	num_cps = $num_cps
	panel = self
	linea = $Line2D
	linea_2 = $Line2D2
	linea_3 = $Line2D3
	linea_4 = $Line2D4
	eje_x = $"EJE X"
	eje_y = $"EJE Y"
	cps = $cps
	sec = $sec

func _Graficar(_x):
	_mostrar_grafica()
	_limpiar_poligonos()
	_Elegir_Color(0)
	_dibujar_grafica(_grafica_logica_matematica(_x), linea)
	$J1.text = "player_1"
	$J2.text = ""
	$J3.text = ""
	$J4.text = ""

func _Grafica_Comparativa(_players, _x, _y = "", _z = "", _w = "", _p = 0):
	_mostrar_grafica()
	_limpiar_poligonos()
	_convercion_datos_player(_players, _x, _y, _z, _w)
	_players = clampi(_players, 1, 4)

	for _line in [linea, linea_2, linea_3, linea_4]:
		_line.clear_points()

	$J1.text = ""
	$J2.text = ""
	$J3.text = ""
	$J4.text = ""

	for i in range(_players):
		var _v
		var _u

		match i:
			0:
				_v = players["1"]
				_u = linea
				$J1.text = "player_1"
			1:
				_v = players["2"]
				_u = linea_2
				$J1.text = "TEAM1"
				$J2.text = "TEAM2"
			2:
				_v = players["3"]
				_u = linea_3
				$J1.text = "player_1"
				$J2.text = "player_2"
				$J3.text = "player_3"
			3:
				_v = players["4"]
				_u = linea_4
				$J1.text = "player_1"
				$J2.text = "player_2"
				$J3.text = "player_3"
				$J4.text = "player_4"

		if not _v is Dictionary:
			continue

		_Elegir_Color(i)
		_dibujar_grafica(_grafica_logica_matematica(_v), _u, _p)

func _convercion_datos_player(_players, _x, _y, _z, _w):
	var _peak = 0
	_players = clampi(_players, 1, 4)
	players["1"] = _x
	players["2"] = _y
	players["3"] = _z
	players["4"] = _w
	for i in _players:
		if players[str(i+1)]["M_Clicks"] > _peak:
			_peak = players[str(i+1)]["M_Clicks"]
	for i in _players:
		players[str(i+1)]["M_Clicks"] = _peak

func _Elegir_Color(_x):
	match _x:
		1:
			Color_Line2D_Is = "rojo"
			Color_Point_Is = "rojo_p"
		2:
			Color_Line2D_Is = "amarillo"
			Color_Point_Is = "gris_p"
		3:
			Color_Line2D_Is = "azul"
			Color_Point_Is = "azul_p"
		_:
			Color_Line2D_Is = "verde"
			Color_Point_Is = "verde_p"

func _ocultar():
	panel.self_modulate = Color(1, 1, 1, 0)
	eje_x.visible = false
	eje_y.visible = false
	cps.visible = false
	sec.visible = false
	num_seg.visible = false
	num_cps.visible = false

func _mostrar_grafica():
	panel.self_modulate = Color.WHITE
	eje_x.visible = true
	eje_y.visible = true
	cps.visible = true
	sec.visible = true
	num_seg.visible = true
	num_cps.visible = true

func _grafica_logica_matematica(_x):
	var _tamaño_panel = 1.0
	var _n = int(_x["M_Clicks"])
	var _seg = int(_x["M_Seg"])

	num_cps.text = str(_n)
	num_seg.text = str(_seg)

	var _Y = {}
	var _X = {}

	var _vector2 = {
		"coordenadas": {},
		"segmentoX": {},
		"segmentoY": {},
		"valoresX": {},
		"valoresY": {}
	}

	var _trayectoria = 0


	for i in 2:
		var _N = _n if _trayectoria == 0 else _seg
		var _S = log(maxf(float(_N), 1.0)) / log(2.0)
		var _S_int = max(int(_S) if (_S - int(_S)) < 0.6 else int(_S) + 1, 1)

		if _trayectoria == 1:
			var _espacio_minimo = 50.0
			var _max_segmentos = maxi(1, int(panel.texture.get_size().y / _espacio_minimo))
			_S_int = mini(_S_int, _max_segmentos)

		for a in range(_S_int + 1):
			var _M = int((float(a) * _N) / _S_int)

			if _trayectoria == 0:
				_Y[a] = _M
				_vector2["valoresX"][a] = _M
			else:
				_X[a] = _M
				_vector2["valoresY"][a] = _M

		if _trayectoria == 0:
			var _ultimo = float(_Y.values()[-1])
			for e in _Y.keys():
				_Y[e] = float(_Y[e]) / maxf(_ultimo, 1.0) * _tamaño_panel
		else:
			var _ultimo = float(_X.values()[-1])
			for e in _X.keys():
				_X[e] = float(_X[e]) / maxf(_ultimo, 1.0) * _tamaño_panel

		_trayectoria += 1


	for u in range(_x["CPS"].size()):
		var X = float(u) / maxf(float(_seg), 1.0)
		var Y = float(_x["CPS"][u]) / maxf(float(_n), 1.0)
		_vector2["coordenadas"][u] = Vector2(X, Y)

	for u in range(_X.size()):
		_vector2["segmentoY"][u] = _X[u]

	for u in range(_Y.size()):
		_vector2["segmentoX"][u] = _Y[u]

	return _vector2

func _datos_linea(_x, _y, _z = Vector2.ZERO):
	var line_x = _y

	if _x == 0:
		line_x.default_color = Colors[Color_Line2D_Is]
		line_x.position = Vector2.ZERO
		line_x.scale = Vector2.ONE
		line_x.clear_points()
		line_x.width = 1.6
		line_x.antialiased = true
		line_x.joint_mode = Line2D.LINE_JOINT_ROUND
		line_x.begin_cap_mode = Line2D.LINE_CAP_ROUND
		line_x.end_cap_mode = Line2D.LINE_CAP_ROUND
	else:
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
			var _radio = 8.0
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
	var _plantilla_y = _eje_y.get_node("o_1")

	for u in range(_segmento_y.size()):
		var _numero = u
		var _nombre = "o_" + str(_numero)

		if not _eje_y.has_node(_nombre):
			var _nuevo = _plantilla_y.duplicate()
			_nuevo.name = _nombre
			_eje_y.add_child(_nuevo)

		var _valor = float(_segmento_y[u])
		var _rich = _eje_y.get_node(_nombre)
		_rich.text = str(_valores_y[u])
		_rich.position.x = ((_valor * _ancho_real) - _mitad_x) / _escala_x - 4.0
		_rich.visible = true

	for _hijo in _eje_y.get_children():
		if _hijo.name.begins_with("o_"):
			var _numero = int(_hijo.name.substr(2))
			_hijo.visible = _numero < _segmento_y.size()

	var _eje_x = _panel.get_node("EJE X")
	var _plantilla_x = _eje_x.get_node("o_1")

	for u in range(_segmento_x.size()):
		var _numero = u
		var _nombre = "o_" + str(_numero)

		if not _eje_x.has_node(_nombre):
			var _nuevo = _plantilla_x.duplicate()
			_nuevo.name = _nombre
			_eje_x.add_child(_nuevo)

		var _valor = float(_segmento_x[u])
		var _rich = _eje_x.get_node(_nombre)
		_rich.text = str(_valores_x[u])
		_rich.position.y = (_mitad_y - (_valor * _alto_real)) / _escala_y - 5.0
		_rich.visible = true

	for _hijo in _eje_x.get_children():
		if _hijo.name.begins_with("o_"):
			var _numero = int(_hijo.name.substr(2))
			_hijo.visible = _numero < _segmento_x.size()

func _limpiar_poligonos():
	for _hijo in panel.get_children():
		if _hijo is Polygon2D:
			_hijo.queue_free()
