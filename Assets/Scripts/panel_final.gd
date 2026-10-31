extends PanelContainer

var main
var text
var panel

func _ready() -> void:
	_objetos()
	$"../../..".datos_final.connect(_datos)

func _objetos():
	main = $"."
	text = $Panel2/Estadisticas/esta
	panel = $Panel

func _datos(_player: int,_a: Dictionary,_b: Dictionary,_c: Dictionary,_d: Dictionary,_text: String):
	main.visible = true
	text.text = _text
	var _x = 0
	var _y = 0
	match _player:
		0:
			_x = 1
			_y = 0
		1:
			_x = 2
			_y = 0
		2:
			_x = 2
			_y = 0
		3:
			_x = 3
			_y = 1
		4:
			_x = 4
	panel._Grafica_Comparativa(_x,_a,_b,_c,_d,_y)
	$Anima.play("aparecer")
	_centrar_panel()

func _on_x_button_pressed() -> void:
	$Panel2/New_Record.visible = false
	$"../../click".play()
	$"../../Botones_ocultar desafio/paneles".visible = true
	main.visible = false

func _centrar_panel():
	await get_tree().process_frame
	var _pantalla = get_viewport_rect().size
	$"..".global_position.y = (_pantalla.y - size.y) / 2
