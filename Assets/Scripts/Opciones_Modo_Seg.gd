extends HBoxContainer

@export var tipo : int = 0
signal modo
signal sec
signal X
signal numerito_boton_jugador

var contenedor_modo
var botton_modo
var modo_solo
var modo_1c1
var modo_2c2
var modo_3p
var modo_4p

var contenedor_seg
var botton_seg
var seg_1
var seg_10
var seg_20
var seg_30 
var seg_60
var seg_x

var contador_panel_modo = 0
var contador_panel_seg = 0

func _ready() -> void:
	if tipo == 0:
		$"../../..".seg_0.connect(_vacio_seg)
	_procesar_objetos()

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if contador_panel_modo == 1 or contador_panel_seg == 1:
			var mouse = get_global_mouse_position()
			var sobre_menu = false

			var botones = [
				botton_modo, modo_solo, modo_1c1, modo_2c2, modo_3p, modo_4p,
				botton_seg, seg_1, seg_10, seg_20, seg_30, seg_60, seg_x
			]

			for boton in botones:
				if boton.is_visible_in_tree() and boton.get_global_rect().has_point(mouse):
					sobre_menu = true
					break

			if not sobre_menu:
				contador_panel_modo = 0
				contador_panel_seg = 0
				contenedor_modo.visible = false
				contenedor_seg.visible = false

func _vacio_seg():
	_seg("XD",1)

func _procesar_objetos():
	contenedor_modo = $panel_modo/ESC_de_hbox_container/Panel/panel_total_modo/panel_modo
	botton_modo = $panel_modo/ESC_de_hbox_container/Panel/panel_total_modo/modo
	modo_solo = $panel_modo/ESC_de_hbox_container/Panel/panel_total_modo/panel_modo/solo
	modo_1c1 = $"panel_modo/ESC_de_hbox_container/Panel/panel_total_modo/panel_modo/1c1"
	modo_2c2 = $"panel_modo/ESC_de_hbox_container/Panel/panel_total_modo/panel_modo/2c2"
	modo_3p = $"panel_modo/ESC_de_hbox_container/Panel/panel_total_modo/panel_modo/3p"
	modo_4p = $"panel_modo/ESC_de_hbox_container/Panel/panel_total_modo/panel_modo/4p"

	contenedor_seg = $panel_seg/ESC_de_hbox_container/Panel/panel_total_seg/panel_seg
	botton_seg = $panel_seg/ESC_de_hbox_container/Panel/panel_total_seg/seg
	seg_1 = $"panel_seg/ESC_de_hbox_container/Panel/panel_total_seg/panel_seg/1sec"
	seg_10 = $"panel_seg/ESC_de_hbox_container/Panel/panel_total_seg/panel_seg/10sec"
	seg_20 = $"panel_seg/ESC_de_hbox_container/Panel/panel_total_seg/panel_seg/20sec"
	seg_30 = $"panel_seg/ESC_de_hbox_container/Panel/panel_total_seg/panel_seg/30sec"
	seg_60 = $"panel_seg/ESC_de_hbox_container/Panel/panel_total_seg/panel_seg/60sec"
	seg_x = $panel_seg/ESC_de_hbox_container/Panel/panel_total_seg/panel_seg/xsec

func _botton_modo_desplegable() -> void:
	contador_panel_modo = _contador_panel(contador_panel_modo)
	_match_contador(contador_panel_modo,0)

func _botton_seg_desplegable() -> void:
	contador_panel_seg = _contador_panel(contador_panel_seg)
	_match_contador(contador_panel_seg,1)

func _contador_panel(_a):
	if _a == 0:
		_a = 1
	else:
		_a = 0
	return _a

func _match_contador(
_a, # contador_panel_(...)
_b # que tipo de contador es ( 0 modo, 1 seg)
):
	var _X = false
	var _y = false
	if _b == 0: # modo
		contador_panel_seg = 0
		_X = true
		_y = false
	else: # seg
		contador_panel_modo = 0
		_X = false
		_y = true
	match _a:
		0:
			contenedor_modo.visible = false
			contenedor_seg.visible = false
		1:
			contenedor_modo.visible = _X
			contenedor_seg.visible = _y

func _seg_1() -> void:
	_seg(seg_1)
	sec.emit(Vector2(1,tipo))
	X.emit(0)
func _seg_10() -> void:
	_seg(seg_10)
	sec.emit(Vector2(2,tipo))
	X.emit(0)
func _seg_20() -> void:
	_seg(seg_20)
	sec.emit(Vector2(3,tipo))
	X.emit(0)
func _seg_30() -> void:
	_seg(seg_30)
	sec.emit(Vector2(4,tipo))
	X.emit(0)
func _seg_60() -> void:
	_seg(seg_60)
	sec.emit(Vector2(5,tipo))
	X.emit(0)
func _seg_X() -> void:
	_seg(seg_x)
	sec.emit(Vector2(0,tipo))
	X.emit(1)

func _seg(_se,_a = 0):
	contador_panel_seg = 0
	contenedor_seg.visible = false
	if _a == 1:
		botton_seg.text = "---"
	else:
		botton_seg.text = _se.text



func _solo() -> void:
	_modo(modo_solo)
	modo.emit(Vector2(0,tipo))
	numerito_boton_jugador.emit(0)
func _1c1() -> void:
	_modo(modo_1c1)
	modo.emit(Vector2(1,tipo))
	numerito_boton_jugador.emit(1)
func _2c2() -> void:
	_modo(modo_2c2)
	modo.emit(Vector2(2,tipo))
	numerito_boton_jugador.emit(1)
func _3p() -> void:
	_modo(modo_3p)
	modo.emit(Vector2(3,tipo))
	numerito_boton_jugador.emit(0)
func _4p() -> void:
	_modo(modo_4p)
	modo.emit(Vector2(4,tipo))
	numerito_boton_jugador.emit(0)

func _modo(_mo):
	contador_panel_modo = 0
	contenedor_modo.visible = false
	botton_modo.text = _mo.text
