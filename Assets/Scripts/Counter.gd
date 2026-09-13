extends CanvasLayer

@export var depurar : bool
@export var posicion_noto_botones_x : Vector2
#contador normal:
var counter = 0 #contador normal
var Mejor_cliks = 0 #record del contador normal 
#desafios con sus respectivos jugadores Y DATOS EXTRA:
var tipo_de_modo_jugadores = 0 # 0 un jugador, 1 1c1, 2 2c2, 3 todos contra todos(3), 4 todos contra todos (4)

var counter_J2 = 0 # contador normal
var counter_J3 = 0
var counter_J4 = 0

var Mejor_cliks_J2 = 0 # record del contador normal
var Mejor_cliks_J3 = 0
var Mejor_cliks_J4 = 0

var Mejor_cliks_1 = 0 # record del contador de 1 segundos
var Mejor_cliks_1_J2 = 0
var Mejor_cliks_1_J3 = 0
var Mejor_cliks_1_J4 = 0

var Mejor_cps_1: float = 0.0 # el mayor record de clicks de 1 segundos
var Mejor_cps_1_J2: float = 0.0
var Mejor_cps_1_J3: float = 0.0
var Mejor_cps_1_J4: float = 0.0

var Mejor_cliks_10 = 0 # record del contador de 10 segundos
var Mejor_cliks_10_J2 = 0
var Mejor_cliks_10_J3 = 0
var Mejor_cliks_10_J4 = 0

var Mejor_cps_10: float = 0.0 # el mayor record de clicks de 10 segundos
var Mejor_cps_10_J2: float = 0.0
var Mejor_cps_10_J3: float = 0.0
var Mejor_cps_10_J4: float = 0.0

var Mejor_cliks_20 = 0 # record del contador de 20 segundos
var Mejor_cliks_20_J2 = 0
var Mejor_cliks_20_J3 = 0
var Mejor_cliks_20_J4 = 0

var Mejor_cps_20: float = 0.0 # el mayor record de clicks de 20 segundos
var Mejor_cps_20_J2: float = 0.0
var Mejor_cps_20_J3: float = 0.0
var Mejor_cps_20_J4: float = 0.0

var Mejor_cliks_30 = 0 # record del contador de 30 segundos
var Mejor_cliks_30_J2 = 0
var Mejor_cliks_30_J3 = 0
var Mejor_cliks_30_J4 = 0

var Mejor_cps_30: float = 0.0 # el mayor record de clicks de 30 segundos
var Mejor_cps_30_J2: float = 0.0
var Mejor_cps_30_J3: float = 0.0
var Mejor_cps_30_J4: float = 0.0

var Mejor_cliks_60 = 0 # record del contador de 60 segundos
var Mejor_cliks_60_J2 = 0
var Mejor_cliks_60_J3 = 0
var Mejor_cliks_60_J4 = 0

var Mejor_cps_60: float = 0.0 # el mayor record de clicks de 60 segundos
var Mejor_cps_60_J2: float = 0.0
var Mejor_cps_60_J3: float = 0.0
var Mejor_cps_60_J4: float = 0.0

var Mejor_cliks_x = 0 # record del contador de x segundos
var Mejor_cliks_x_J2 = 0
var Mejor_cliks_x_J3 = 0
var Mejor_cliks_x_J4 = 0

var Mejor_cps_x: float = 0.0 # el mayor record de clicks de x segundos
var Mejor_cps_x_J2: float = 0.0
var Mejor_cps_x_J3: float = 0.0
var Mejor_cps_x_J4: float = 0.0

var Segundos_personalizados: int = 0
var cps_actual: float = 0.0 # hasta donde llegaste de clicks de (desafio) segundos   
var cps_actual_J2: float = 0.0 
var cps_actual_J3: float = 0.0 
var cps_actual_J4: float = 0.0 

#cosas para los modos de juego cooperativos
var lado_a = 0
var lado_b = 0
var lados_si_or_not = 0 
#logica que empieza desafios:
@export var desafio : bool #si se juega el desafio
var segundos = 0 #valor que sera de ayuda para los segundos
var max_segundos = 0 #valor maximo de segundos
var iniciar_desafio = 0 #valor que dira cuando inicia el desafio
var bucle_desafio = 0
#botones:
var b_contador
var b_contador2
var b_contador3
var b_contador4
var b_desafio_20
var b_reset
var b_desafio_1
var b_desafio_10
var b_desafio_30
var b_desafio_60
var b_desafio_personalizado
var b_desafio_p_oculto
var b_reset_counter
var b_opciones
var b_opciones2
#botones de mas jugadores
var b_ucu
var b_dcd
var b_uct3
var b_uct4
var b_solitario
#textos:
var t_entrado_personalizada
var t_counter
var t_counter2
var t_counter3
var t_counter4
var t_time_text
var t_time_contorno_text
var t_lado_a
var t_lado_b
var t_lado_a_negro
var t_lado_b_negro
var t_estadistica_local 
var t_estadistica_global
var t_estadistica_local_negro
var t_estadistica_global_negro
var t_proximamente
var t_proximamente_negro
#nodos
var n_esconder_botones_no_necesarios_desafio
var n_aparecer_botones_si_necesarios_desafio
var n_todo
var n_apartado_opciones_total
var n_estadisticas_opciones_down
var n_skins_opciones_down
var n_opciones_opciones_down
var n_barra_abajo_total
var n_barra_competitiva
var n_nodo_barra
#tiempo
var t_tiempo
#ruta de guardato:
const RUTA_GUARDADO = "user://ClickSpeed.deker" #ruta de guardado
#opciones
var opciones = 1
var camino = 0
var plus1 = 1
var confeti = 1
var vibration = 1
var volumen_effect = 1
var volumen_music = 1
#otras estadsticas
var total_counter = 0
#posicion botones (posicion)
var p_boton 
var p_boton_1c1
var p_boton2_1c1
var p_boton_t3
var p_boton2_t3
var p_boton3_t3
var p_boton_t4
var p_boton2_t4
var p_boton3_t4
var p_boton4_t4
var p_botonX
var botonX
var p_node
#scala botones (scala)
var s_normal
var s_1c1
var s_t3
var s_2c2_t4
#audio
var a_click
#AVISOS O TEXTOS QUE APARECEN (Aviso)
var A_texto
var A_label
var A_animation_valor_valido
var A_texto_desaparecedor
#Posiciones posibles del aviso (Aviso Direccion)
var AD_1
var AD_2
var AD_3
var AD_4
var AD_5
var AD_6
var AD_7
var AD_8
var AD_9
var AD_10
var AD_11
#strings y datos importantes (String Dato)
var SD_Modo_1s
var SD_Modo_10s
var SD_Modo_20s
var SD_Modo_30s
var SD_Modo_60s
var SD_Modo_Xs
var SD_SEG
var SD_limite_valor_Modo_Xs
var SD_valor_valido
var SD_Modo_solo
var SD_Modo_1c1
var SD_Modo_2c2
var SD_Modo_t3
var SD_Modo_t4
var SD_ACTIVADO
var SD_DESACTIVADO
var SD_negro 
var SD_esta = ("")
var SD_estadisticas: String
#el +1 al presionar los botones
var click_text = preload("res://Assets/Scenas/click_text.tscn")
#variable que dice si estas en casa o no(apartado normal)
var v_home = 0
#variable que dice si es desafio o total(para opciones)
var v_dessfios_o_total = 0
var v_que_modo_de_juego_ver_opciones = 1
#avariable que dice si deseleccionar un desafio.
var v_doble_click_deseleccionador_desafio = 0
#ASIGNADORES
var A_modo 
var A_tiempos
var A_modo_estadistica
#botones estadisticas:
var be_1c1
var be_2c2
var be_solo
var be_tct3
var be_tct4
#barra de estadisticas
var barra
#repetidor de desafios(boton y texturas la vdd)
var rd_repetidor_desafios
var rd_texture1 = preload("res://Assets/Arte2d/botones/boton1.svg")
var rd_texture2 = preload("res://Assets/Arte2d/botones/boton.svg")
#barra competitiva
var escala_actual = 0
var escala
var suma_total
#textura del boton home cuando eleiges una estadistica lcoal
var th_texture1 = preload("res://Assets/Arte2d/botones/casa_normal.svg")
var th_texture2 = preload("res://Assets/Arte2d/botones/casa_salir.svg")
var th_textura_selector_solo = preload("res://Assets/Arte2d/botones/selector_solo.svg")
var th_texture_selector = preload("res://Assets/Arte2d/botones/selector.svg")
var hme1
#traducion
var columna = 0
var ram_dic = {
	0: "mode_1sec",
	1: "mode_10sec",
	2: "mode_20sec",
	3: "mode_30sec",
	4: "mode_60sec",
	5: "mode_custom",
	6: "sec",
	7: "limit_value",
	8: "valid_value",
	9: "activated",
	10: "solo_mode",
	11: "mode_1c1",
	12: "mode_2c2",
	13: "mode_t3",
	14: "mode_t4",
	15: "deactivated",
	16: "best_clicks",
	17: "best_cps",
	18: "player_1",
	19: "player_2",
	20: "player_3",
	21: "player_4",
	22: "normal",
	23: "x",
	24: "save",
	25: "best",
	26: "clicks",
	27: "cps",
	28: "player",
	29: "max",
	30: "maximum",
	31: "sec2",
	32: "AUDIO",
	33: "Volumen Musica",
	34: "Volumen Efectos",
	35: "PANTALLA",
	36: "Vibracion",
	37: "Confeti",
	38: "Temas",
	39: "coming_soon",
	40: "DATOS",
	41: "IDIOMA",
	42: "NUMBER"
}
#14 / 12
#fuentes y tamañp
var fuente_1 = preload("res://Assets/Fuente/MPLUSRounded1c-Black.ttf")
var fuente_2 = preload("res://Assets/Fuente/Super Starfish.ttf")
var menos_6 = 6
var menos_14 = 14
var menos_16 = 16
#confeti
var confeti_señal
#volumen
var barra_vol_effect
var barra_vol_music


#--------------------------LOGICA DEL JUEGO-------------------------------------:
#LOGICA DE JUEGO INICIO Y AUN
#al iniciar se cargan los datos y se actualizan los datos del label
#AL INICIAR EL JUEGO LLAMA A LAS SIGUIENTES FUNC PARA ASI PODER CORRER,
#UBICARSE MEJOR Y ACTUALIZAR Y/O CARGAR DATOS,
func _ready() -> void:
	call_deferred("_carga_inicial")
	#await get_tree().process_frame
	#barra.custom_minimum_size.x = 18

func _carga_inicial() -> void:
	_procesardor_de_objetos()
	cargar()
	TranslationServer.set_locale(_columnas())
	_modo_jugadores()
	_depurar()
	if depurar == true:
		ver_guardado_texto()
	_opciones_no_desafiadas_aparecen_o_no()

#muestra objetos y textos importantes de desarrollo
#SE DEDICA A MOSTRAR TODAS LAS ESTADISTICAS IMPORTANTES ADEMAS DE COSAS INVISIBLES 
#AHORA SON VISIBLES PARA PODERLAS ANALIZAR
func _depurar():
	if depurar == true:
		p_node.visible = true
		A_texto.visible = true
	elif depurar == false:
		p_node.visible = false
		A_texto.visible = false


#logica de pasar las opciones
#A CADA RATO, SE ACTUALIZARA LOS LABELS DE LA ESCENA PARA MOSTRAS LOS DATOS
#ACTUALES, ADEMAS ESTE SERA EL ENCARGADO DE MOVER EL PANEL DE OPCIONES DE
#DERECHA A IZQUIERDA Y OCULTAR LOS BOTONES QUE PUEDAN INTERFERIR EN LA ANIMACION
func _process(_delta: float) -> void:
	_textos()
	_logica_de_desafios_modos_de_equipos_tipo_contador_barra()
	if opciones == 0 and v_home == 0:
		if n_todo.position.x < 720:
			n_todo.position.x += +25
			b_opciones.visible = false
			b_opciones2.visible = false
		else:
			n_todo.position.x = 720
			b_opciones.visible = true
			b_opciones2.visible = true
	elif opciones == 1 and v_home == 0:
		if n_todo.position.x <= 720 and n_todo.position.x > 1:
			n_todo.position.x +=-25
			b_opciones.visible = false
			b_opciones2.visible = false
		else:
			n_todo.position.x = 0
			b_opciones.visible = true
			b_opciones2.visible = true
	if lados_si_or_not == 1 and tipo_de_modo_jugadores == 1 or tipo_de_modo_jugadores == 2 and desafio == true:
		t_lado_a.visible = true
		t_lado_b.visible = true
		n_nodo_barra.visible = true
		t_lado_a.text = str(counter+counter_J3)
		t_lado_b.text = str(counter_J4+counter_J2)
		t_counter.visible = false
		t_counter2.visible = false
		t_counter3.visible = false
		t_counter4.visible = false
	else:
		n_nodo_barra.visible = false
		t_lado_a.visible = false
		t_lado_b.visible = false
		t_counter.visible = true
		t_counter2.visible = true
		t_counter3.visible = true
		t_counter4.visible = true


func _logica_de_desafios_modos_de_equipos_tipo_contador_barra():
	suma_total = int(t_lado_a.text) + int(t_lado_b.text)
	if suma_total > 0:
		escala = (int(t_lado_a.text) * 4.5) / suma_total
	else:
		escala = 0.0
	if escala_actual > escala:
		escala_actual -= 0.05
	elif escala_actual < escala:
		escala_actual += 0.05
	n_barra_competitiva.scale.x = escala_actual


#ASIGNAR UN OBJETO A UNA VARIABLE
#procesa cada variable con un objeto de la escena
#PARA MAYOR FLEXIBILIDAD, CADA VARIABLE TENDRA LA RUTA DE UN OBJETO O COSA
#QUE ESTE EN LA ESCENA Y SEA IMPORTANTE, ASI SE EVITARA ESCRIBIR TODA UNA 
#DIRECCION.
func _procesardor_de_objetos():
	#botones:
	b_contador = $Node2D/Boton
	b_contador2 = $Node2D/Boton2
	b_contador3 = $Node2D/Boton3
	b_contador4 = $Node2D/Boton4
	b_desafio_20 = $"Node2D/Botones_ocultar desafio/desafio20"
	b_reset = $"Apartado de opciones abajo/opcion/datos/reset"
	b_desafio_1 = $"Node2D/Botones_ocultar desafio/desafio1"
	b_desafio_10 = $"Node2D/Botones_ocultar desafio/desafio10"
	b_desafio_30 = $"Node2D/Botones_ocultar desafio/desafio30"
	b_desafio_60 = $"Node2D/Botones_ocultar desafio/desafio60"
	b_desafio_personalizado = $"Node2D/Botones_ocultar desafio/desafioPerson"
	b_desafio_p_oculto = $"Node2D/Botones_ocultar desafio/TouchScreenButton"
	b_reset_counter = $"Node2D/Botones_ocultar desafio/reset_counter"
	b_opciones = $"Node2D/Botones_ocultar desafio/opciones"
	b_opciones2 = $"Node2D/Botones_ocultar desafio/opciones2"
	b_ucu = $"Node2D/Botones_ocultar desafio/1c1"
	b_dcd = $"Node2D/Botones_ocultar desafio/2c2"
	b_uct3 = $"Node2D/Botones_ocultar desafio/1 contra todos(3)"
	b_uct4 = $"Node2D/Botones_ocultar desafio/1 contra todos(4)"
	b_solitario = $"Node2D/Botones_ocultar desafio/Solitario"
	#textos:
	t_entrado_personalizada = $"Node2D/Botones_ocultar desafio/EntradaPersonalizada"
	t_counter = $Node2D/Boton/prueba/counter
	t_counter2 = $Node2D/Boton2/prueba/counter
	t_counter3 = $Node2D/Boton3/prueba/counter
	t_counter4 = $Node2D/Boton4/prueba/counter
	t_time_text = $Node2D/Time
	t_time_contorno_text = $Node2D/Time/Time
	t_lado_a = $"Node2D/Botones_aparecer desafio/barra de quien va ganando/lado a"
	t_lado_b = $"Node2D/Botones_aparecer desafio/barra de quien va ganando/lado b"
	t_lado_a_negro = $"Node2D/Botones_aparecer desafio/barra de quien va ganando/lado a/lado a"
	t_lado_b_negro = $"Node2D/Botones_aparecer desafio/barra de quien va ganando/lado b/lado b"
	t_estadistica_local = $"Apartado de opciones abajo/estadistica/Control/ScrollContainer/VBoxContainer/ESTA LOCA/Control/ESTA LOCA"
	t_estadistica_global = $"Apartado de opciones abajo/estadistica/Control/ScrollContainer/VBoxContainer/ESTA GLOB/Control/ESTA GLOB"
	t_estadistica_local_negro = $"Apartado de opciones abajo/estadistica/Control/ScrollContainer/VBoxContainer/ESTA LOCA"
	t_estadistica_global_negro = $"Apartado de opciones abajo/estadistica/Control/ScrollContainer/VBoxContainer/ESTA GLOB"
	t_proximamente = $"Apartado de opciones abajo/skin/Label/Label"
	t_proximamente_negro = $"Apartado de opciones abajo/skin/Label"
	#nodos
	n_esconder_botones_no_necesarios_desafio = $"Node2D/Botones_ocultar desafio"
	n_aparecer_botones_si_necesarios_desafio = $"Node2D/Botones_aparecer desafio"
	n_todo = $Node2D
	n_apartado_opciones_total = $"Apartado de opciones abajo"
	n_estadisticas_opciones_down = $"Apartado de opciones abajo/estadistica"
	n_skins_opciones_down = $"Apartado de opciones abajo/skin"
	n_opciones_opciones_down = $"Apartado de opciones abajo/opcion"
	n_barra_abajo_total = $barraabajo
	n_barra_competitiva = $"Node2D/Botones_aparecer desafio/barra de quien va ganando/barra_verde2"
	n_nodo_barra = $"Node2D/Botones_aparecer desafio/barra de quien va ganando"
	#tiempo
	t_tiempo = $Node2D/Timer
	#posicion de botones
	p_boton = $Node2D/posicion_botones/solitario/posicion_boton_solitario.position
	p_boton_1c1 = $"Node2D/posicion_botones/1c1/posicion_boton_1c1".position
	p_boton2_1c1 = $"Node2D/posicion_botones/1c1/posicion_boton2_1c1".position
	p_boton_t3 = $Node2D/posicion_botones/t3/posicion_boton_t3.position
	p_boton2_t3 = $Node2D/posicion_botones/t3/posicion_boton2_t3.position
	p_boton3_t3 = $Node2D/posicion_botones/t3/posicion_boton3_t3.position
	p_boton_t4 = $"Node2D/posicion_botones/t4 2c2/posicion_boton_t4".position
	p_boton2_t4 = $"Node2D/posicion_botones/t4 2c2/posicion_boton2_t4".position
	p_boton3_t4 = $"Node2D/posicion_botones/t4 2c2/posicion_boton3_t4".position
	p_boton4_t4 = $"Node2D/posicion_botones/t4 2c2/posicion_boton4_t4".position
	p_botonX = $Node2D/posicion_botones/posicion_botonX.position
	botonX = $Node2D/posicion_botones/posicion_botonX
	p_node = $Node2D/posicion_botones
	#scalas de botones
	s_normal = Vector2(0.6,0.6)
	s_1c1 = Vector2(0.525,0.550)
	s_t3 = Vector2(0.364,0.389)
	s_2c2_t4 = Vector2(0.395,0.41)
	#audio
	a_click = $Node2D/click
	#AVISOS O TEXTOS QUE APARECEN
	A_texto = $"Node2D/Botones_ocultar desafio/texto desaparecedor/TEXTO"
	A_label = $"Node2D/Botones_ocultar desafio/texto desaparecedor/TEXTO/Label"
	A_animation_valor_valido = $"Node2D/Botones_ocultar desafio/texto desaparecedor/TEXTO/Label/AnimationPlayer"
	A_texto_desaparecedor = $"Node2D/Botones_ocultar desafio/texto desaparecedor"
	#Posiciones posibles de avisos
	AD_1 = _posicionamiento_del_texto(b_desafio_p_oculto,0) #Xs
	AD_2 = _posicionamiento_del_texto(b_desafio_1,52) #1s
	AD_3 = _posicionamiento_del_texto(b_desafio_10,47.2) #10s
	AD_4 = _posicionamiento_del_texto(b_desafio_20,48.6) #20s
	AD_5 = _posicionamiento_del_texto(b_desafio_30,45.8) #30s
	AD_6 = _posicionamiento_del_texto(b_desafio_60,50.6) #60s
	AD_7 = _posicionamiento_del_texto(b_solitario,-30) #solo
	AD_8 = _posicionamiento_del_texto(b_ucu,45) #1c1
	AD_9 = _posicionamiento_del_texto(b_dcd,45) #2c2
	AD_10 = _posicionamiento_del_texto(b_uct3,48) #t3
	AD_11 = _posicionamiento_del_texto(b_uct4,45) #t4
	#strings y datos importantes (String Dato)
	SD_Modo_1s = str(ram_dic[0])
	SD_Modo_10s = str(ram_dic[1])
	SD_Modo_20s = str(ram_dic[2])
	SD_Modo_30s = str(ram_dic[3])
	SD_Modo_60s = str(ram_dic[4])
	#("SEGUNDO(s)\n PERSONALIZADO(s) = " + str(Segundos_personalizados) + "sec\n")
	SD_Modo_Xs = str(ram_dic[5])
	SD_SEG = str(ram_dic[6])
	SD_limite_valor_Modo_Xs = str(ram_dic[7])
	SD_valor_valido = str(ram_dic[8])
	SD_ACTIVADO = str(ram_dic[9])
	SD_Modo_solo = str(ram_dic[10])
	SD_Modo_1c1 = str(ram_dic[11])
	SD_Modo_2c2 = str(ram_dic[12])
	SD_Modo_t3 = str(ram_dic[13])
	SD_Modo_t4 = str(ram_dic[14])
	SD_DESACTIVADO = str(ram_dic[15])
	SD_negro = $"Node2D/Botones_ocultar desafio/texto desaparecedor/TEXTO/Label/Label2"
	#ASIGNADORES
	A_modo = $"Node2D/Botones_ocultar desafio/MODO"
	A_tiempos = $"Node2D/Botones_ocultar desafio/TIEMPOS"
	A_modo_estadistica = $"Node2D/Botones_ocultar desafio/MODO_ESTADISTICAS"
	#botones estadisticas:
	be_1c1 = $"Node2D/Botones_ocultar desafio/Estadisticas_activa_1c1"
	be_2c2 = $"Node2D/Botones_ocultar desafio/Estadisticas_activa_2c2"
	be_solo = $"Node2D/Botones_ocultar desafio/Estadisticas_activa_solitario"
	be_tct3 = $"Node2D/Botones_ocultar desafio/Estadisticas_activa_tct3"
	be_tct4 = $"Node2D/Botones_ocultar desafio/Estadisticas_activa_tct4"
	#barra de estadisticas
	barra = $"Apartado de opciones abajo/estadistica/Control/ScrollContainer".get_v_scroll_bar()
	#repetidor de desafios(boton y texturas la vdd)
	rd_repetidor_desafios = $"Node2D/Botones_aparecer desafio/repetidor_desafios_indefinidos"
	#confeti
	confeti_señal = $Node2D/letreros_effects/confeti_full
	#volumen
	barra_vol_effect = $"Apartado de opciones abajo/opcion/Audio/effectos/HSlider"
	barra_vol_music = $"Apartado de opciones abajo/opcion/Audio/musica/HSlider"
	#el boton de home de la barra abajo
	hme1 = $"barraabajo/1home"


#sirve para decirle al texto en donde colocarse exactamente segun los datos
func _posicionamiento_del_texto(_a,_b): #dato,,x
	var _e
	_e = Vector2(((_a.global_position.x-(_b))/1.2),(_a.position.y +30)) 
	return _e


#DESAFIO
#logica de desafio y sus variantes
#LOGICA PRINCIPAL DEL QUE SE BASAN TODOS LOS DESAFIOS, SE ESPECIFICA QUE HACER
#SI NO HAY DESAFIO O SI HAYA UNO, ADEMAS DE COMO SE TERMINA Y ACTULIAZAN LOS 
#DATOS O REINICIARLOS
#ocultar botones no necesarios para desafio
func _on_timer_timeout() -> void:
	_opciones_no_desafiadas_aparecen_o_no()
	if desafio == true and iniciar_desafio == 1:
		logica_desafio()
		if segundos >= max_segundos:
			if bucle_desafio == 0:
				_finalizar_desafio()
			else:
				_bucle_desafio()
		#print(segundos)
		segundos += 1

#CONFIGURACION PARA SALIR DE UN DESAFIO
func _finalizar_desafio():
	guardar()
	counter = 0
	counter_J2 = 0
	counter_J3 = 0
	counter_J4 = 0
	desafio = false
	_no_quiero_escrbir_esta_linea_de_desactivacion_siempre(-1,0,0,0,0)
	segundos = 0
	_opciones_no_desafiadas_aparecen_o_no()
	t_tiempo.wait_time = 0.006
	iniciar_desafio = 0

#CONFIGURACION PARA UN DESAFIO INFINITO O NO
func _bucle_desafio():
	guardar()
	counter = 0
	counter_J2 = 0
	counter_J3 = 0
	counter_J4 = 0
	segundos = 0
	_opciones_no_desafiadas_aparecen_o_no()

#se especializa en decir si las otras opciones aparecn o no dependiendo el valor
#de la variable desafio
#SE DEDICA A OCULTAR O A PRESENTAR LOS BOTONES COMO LAS OPCIONES Y SE DEFINE
#POR MEDIO DEL VALOR BOOLEANO DESAFIO
func _opciones_no_desafiadas_aparecen_o_no():
	if desafio == false:
		t_time_text.visible = false
		n_esconder_botones_no_necesarios_desafio.visible = true
		n_esconder_botones_no_necesarios_desafio.position.x = posicion_noto_botones_x.x
		n_esconder_botones_no_necesarios_desafio.position.y = posicion_noto_botones_x.y
		n_aparecer_botones_si_necesarios_desafio.visible = false
		n_aparecer_botones_si_necesarios_desafio.position.x = -1000
		n_aparecer_botones_si_necesarios_desafio.position.y = -1000
		n_barra_abajo_total.position = Vector2(0,0)
		return
	elif desafio == true and opciones == 1:
		t_time_text.visible = true
		n_esconder_botones_no_necesarios_desafio.visible = false
		n_esconder_botones_no_necesarios_desafio.position.x = -1000
		n_esconder_botones_no_necesarios_desafio.position.y = -1000
		n_aparecer_botones_si_necesarios_desafio.visible = true
		n_aparecer_botones_si_necesarios_desafio.position.x = posicion_noto_botones_x.x
		n_aparecer_botones_si_necesarios_desafio.position.y = posicion_noto_botones_x.y
		n_barra_abajo_total.position = Vector2(-1000,-100)
		return


#superar record en los desafios
#AQUI SE ESPECIFICA QUE PASARIA SI EN UN DESAFIO SE ROMPE EL MEJOR CPS 
#(CLICKS POR SEGUNDO (DE ESE DESAFIO Y DE ESE JUGADOR)) CON RESPECTO AL CPS ACTUAL
func logica_desafio():
	cps_actual = (float(counter)/max_segundos)
	cps_actual_J2 = (float(counter_J2)/max_segundos)
	cps_actual_J3 = (float(counter_J3)/max_segundos)
	cps_actual_J4 = (float(counter_J4)/max_segundos)
	if max_segundos == 1:
		if cps_actual > Mejor_cps_1:
			Mejor_cps_1 = cps_actual
			_cuando_el_mejor_cps_es_mayor(Mejor_cliks_1)
		if cps_actual_J2 > Mejor_cps_1_J2:
			Mejor_cps_1_J2 = cps_actual_J2
			_cuando_el_mejor_cps_es_mayor(Mejor_cliks_1_J2)
		if cps_actual_J3 > Mejor_cps_1_J3:
			Mejor_cps_1_J3 = cps_actual_J3
			_cuando_el_mejor_cps_es_mayor(Mejor_cliks_1_J3)
		if cps_actual_J4 > Mejor_cps_1_J4:
			Mejor_cps_1_J4 = cps_actual_J4
			_cuando_el_mejor_cps_es_mayor(Mejor_cliks_1_J4)
	elif max_segundos == 10:
		if cps_actual > Mejor_cps_10:
			Mejor_cps_10 = cps_actual
			_cuando_el_mejor_cps_es_mayor(Mejor_cliks_10)
		if cps_actual_J2 > Mejor_cps_10_J2:
			Mejor_cps_10_J2 = cps_actual_J2
			_cuando_el_mejor_cps_es_mayor(Mejor_cliks_10_J2)
		if cps_actual_J3 > Mejor_cps_10_J3:
			Mejor_cps_10_J3 = cps_actual_J3
			_cuando_el_mejor_cps_es_mayor(Mejor_cliks_10_J3)
		if cps_actual_J4 > Mejor_cps_10_J4:
			Mejor_cps_10_J4 = cps_actual_J4
			_cuando_el_mejor_cps_es_mayor(Mejor_cliks_10_J4)
	elif max_segundos == 20:
		if cps_actual > Mejor_cps_20:
			Mejor_cps_20 = cps_actual
			_cuando_el_mejor_cps_es_mayor(Mejor_cliks_20)
		if cps_actual_J2 > Mejor_cps_20_J2:
			Mejor_cps_20_J2 = cps_actual_J2
			_cuando_el_mejor_cps_es_mayor(Mejor_cliks_20_J2)
		if cps_actual_J3 > Mejor_cps_20_J3:
			Mejor_cps_20_J3 = cps_actual_J3
			_cuando_el_mejor_cps_es_mayor(Mejor_cliks_20_J3)
		if cps_actual_J4 > Mejor_cps_20_J4:
			Mejor_cps_20_J4 = cps_actual_J4
			_cuando_el_mejor_cps_es_mayor(Mejor_cliks_20_J4)
	elif max_segundos == 30:
		if cps_actual > Mejor_cps_30:
			Mejor_cps_30 = cps_actual
			_cuando_el_mejor_cps_es_mayor(Mejor_cliks_30)
		if cps_actual_J2 > Mejor_cps_30_J2:
			Mejor_cps_30_J2 = cps_actual_J2
			_cuando_el_mejor_cps_es_mayor(Mejor_cliks_30_J2)
		if cps_actual_J3 > Mejor_cps_30_J3:
			Mejor_cps_30_J3 = cps_actual_J3
			_cuando_el_mejor_cps_es_mayor(Mejor_cliks_30_J3)
		if cps_actual_J4 > Mejor_cps_30_J4:
			Mejor_cps_30_J4 = cps_actual_J4
			_cuando_el_mejor_cps_es_mayor(Mejor_cliks_30_J4)
	elif max_segundos == 60:
		if cps_actual > Mejor_cps_60:
			Mejor_cps_60 = cps_actual
			_cuando_el_mejor_cps_es_mayor(Mejor_cliks_60)
		if cps_actual_J2 > Mejor_cps_60_J2:
			Mejor_cps_60_J2 = cps_actual_J2
			_cuando_el_mejor_cps_es_mayor(Mejor_cliks_60_J2)
		if cps_actual_J3 > Mejor_cps_60_J3:
			Mejor_cps_60_J3 = cps_actual_J3
			_cuando_el_mejor_cps_es_mayor(Mejor_cliks_60_J3)
		if cps_actual_J4 > Mejor_cps_60_J4:
			Mejor_cps_60_J4 = cps_actual_J4
			_cuando_el_mejor_cps_es_mayor(Mejor_cliks_60_J4)
	elif max_segundos == Segundos_personalizados and Segundos_personalizados > 0:
		if cps_actual > Mejor_cps_x:
			Mejor_cps_x = cps_actual
			_cuando_el_mejor_cps_es_mayor(Mejor_cliks_x)
		if cps_actual_J2 > Mejor_cps_x_J2:
			Mejor_cps_x_J2 = cps_actual_J2
			_cuando_el_mejor_cps_es_mayor(Mejor_cliks_x_J2)
		if cps_actual_J3 > Mejor_cps_x_J3:
			Mejor_cps_x_J3 = cps_actual_J3
			_cuando_el_mejor_cps_es_mayor(Mejor_cliks_x_J3)
		if cps_actual_J4 > Mejor_cps_x_J4:
			Mejor_cps_x_J4 = cps_actual_J4
			_cuando_el_mejor_cps_es_mayor(Mejor_cliks_x_J4)

func _cuando_el_mejor_cps_es_mayor(_a):
	if _a != 0 and confeti == 1:
		confeti_señal.confeti.emit()


#TODO LA LOGICA PRINCIPAL DE ESTADISTICAS
#logita para saber q hacen los botones de estadisticas de las opciones.
func _para_estadisticas_opciones(_a,_b,_c = 0):
	a_click.play()
	if _b == 1:
		_botones_abajo(1)
	else:
		_textos_explicativos(_c.position.x-35,_c.position.y+20,SD_ACTIVADO)
	v_dessfios_o_total = _a
	_que_estadistica_mostrar()

#logica de que hara segun los datos de estadisticas
func _que_estadistica_mostrar():
	match v_dessfios_o_total:
		0:
			t_estadistica_local.visible = false
			t_estadistica_local_negro.text = ""
			t_estadistica_global.visible = true
			t_estadistica_local_negro.visible = false
			t_estadistica_global_negro.visible = true
			t_estadistica_global.text = SD_estadisticas
		1:
			v_que_modo_de_juego_ver_opciones = 2
			_asignadores(1,be_1c1)
		2:
			v_que_modo_de_juego_ver_opciones = 4
			_asignadores(1,be_2c2)
		3:
			v_que_modo_de_juego_ver_opciones = 1
			_asignadores(1,be_solo)
		4:
			v_que_modo_de_juego_ver_opciones = 3
			_asignadores(1,be_tct3)
		5:
			v_que_modo_de_juego_ver_opciones = 4
			_asignadores(1,be_tct4)
		6:
			_que_muestran_las_estadisticas(Mejor_cliks_10,Mejor_cps_10,10,Mejor_cliks_10_J2,Mejor_cps_10_J2,Mejor_cliks_10_J3,Mejor_cps_10_J3,Mejor_cliks_10_J4,Mejor_cps_10_J4)
		7:
			_que_muestran_las_estadisticas(Mejor_cliks_30,Mejor_cps_30,30,Mejor_cliks_30_J2,Mejor_cps_30_J2,Mejor_cliks_30_J3,Mejor_cps_30_J3,Mejor_cliks_30_J4,Mejor_cps_30_J4)
		8:
			_que_muestran_las_estadisticas(Mejor_cliks_1,Mejor_cps_1,1,Mejor_cliks_1_J2,Mejor_cps_1_J2,Mejor_cliks_1_J3,Mejor_cps_1_J3,Mejor_cliks_1_J4,Mejor_cps_1_J4)
		9:
			_que_muestran_las_estadisticas(Mejor_cliks_20,Mejor_cps_20,20,Mejor_cliks_20_J2,Mejor_cps_20_J2,Mejor_cliks_20_J3,Mejor_cps_20_J3,Mejor_cliks_20_J4,Mejor_cps_20_J4)
		10:
			_que_muestran_las_estadisticas(Mejor_cliks_60,Mejor_cps_60,60,Mejor_cliks_60_J2,Mejor_cps_60_J2,Mejor_cliks_60_J3,Mejor_cps_60_J3,Mejor_cliks_60_J4,Mejor_cps_60_J4)
		11:
			_que_muestran_las_estadisticas(Mejor_cliks_x,Mejor_cps_x,"X",Mejor_cliks_x_J2,Mejor_cps_x_J2,Mejor_cliks_x_J3,Mejor_cps_x_J3,Mejor_cliks_x_J4,Mejor_cps_x_J4)

#visor estadisticas locales
func _que_muestran_las_estadisticas(_a,_b,_c,_a2,_b2,_a3,_b3,_a4,_b4):
	_estadisticas_mostrar_texto_parasiempre()
	hme1.texture_normal = th_texture2
	SD_estadisticas = SD_esta
	t_estadistica_local.visible = true
	t_estadistica_global.visible = false
	t_estadistica_local_negro.visible = true
	t_estadistica_global_negro.visible = false
	t_estadistica_global_negro.text = ""

	if v_que_modo_de_juego_ver_opciones == 1:
		t_estadistica_local.text = (
		t(str(ram_dic[18])) + ":\n" +
		t(str(ram_dic[26])) + "\n[color=#FFA500]" + t(str(ram_dic[29])) + "[/color] [color=#D8B4FE](" + str(_c) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(_a) + "[/color]" +
		"\n[color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](" + str(_c) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(_b) + "/s[/color]\n\n\n\n\n\n"
	)

	elif v_que_modo_de_juego_ver_opciones == 2:
		t_estadistica_local.text = (
		t(str(ram_dic[18])) + ":\n" +
		t(str(ram_dic[26])) + "\n[color=#FFA500]" + t(str(ram_dic[29])) + "[/color] [color=#D8B4FE](" + str(_c) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(_a) + "[/color]" +
		"\n[color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](" + str(_c) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(_b) + "/s[/color]" +
		"\n" +
		"\n" + t(str(ram_dic[19])) + ":\n" +
		t(str(ram_dic[26])) + "\n[color=#FFA500]" + t(str(ram_dic[29])) + "[/color] [color=#D8B4FE](" + str(_c) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(_a2) + "[/color]" +
		"\n[color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](" + str(_c) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(_b2) + "/s[/color]\n\n\n\n\n\n"
		)

	elif v_que_modo_de_juego_ver_opciones == 3:
		t_estadistica_local.text = (
		t(str(ram_dic[18])) + ":\n" +
		t(str(ram_dic[26])) + "\n[color=#FFA500]" + t(str(ram_dic[29])) + "[/color] [color=#D8B4FE](" + str(_c) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(_a) + "[/color]" +
		"\n[color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](" + str(_c) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(_b) + "/s[/color]" +
		"\n" +
		"\n" + t(str(ram_dic[19])) + ":\n" +
		t(str(ram_dic[26])) + "\n[color=#FFA500]" + t(str(ram_dic[29])) + "[/color] [color=#D8B4FE](" + str(_c) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(_a2) + "[/color]" +
		"\n[color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](" + str(_c) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(_b2) + "/s[/color]" +
		"\n" +
		"\n" + t(str(ram_dic[20])) + ":\n" +
		t(str(ram_dic[26])) + "\n[color=#FFA500]" + t(str(ram_dic[29])) + "[/color] [color=#D8B4FE](" + str(_c) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(_a3) + "[/color]" +
		"\n[color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](" + str(_c) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(_b3) + "/s[/color]\n\n\n\n\n\n"
		)

	elif v_que_modo_de_juego_ver_opciones == 4:
		t_estadistica_local.text = (
		t(str(ram_dic[18])) + ":\n" +
		t(str(ram_dic[26])) + "\n[color=#FFA500]" + t(str(ram_dic[29])) + "[/color] [color=#D8B4FE](" + str(_c) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(_a) + "[/color]" +
		"\n[color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](" + str(_c) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(_b) + "/s[/color]" +
		"\n" +
		"\n" + t(str(ram_dic[19])) + ":\n" +
		t(str(ram_dic[26])) + "\n[color=#FFA500]" + t(str(ram_dic[29])) + "[/color] [color=#D8B4FE](" + str(_c) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(_a2) + "[/color]" +
		"\n[color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](" + str(_c) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(_b2) + "/s[/color]" +
		"\n" +
		"\n" + t(str(ram_dic[20])) + ":\n" +
		t(str(ram_dic[26])) + "\n[color=#FFA500]" + t(str(ram_dic[29])) + "[/color] [color=#D8B4FE](" + str(_c) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(_a3) + "[/color]" +
		"\n[color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](" + str(_c) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(_b3) + "/s[/color]" +
		"\n" +
		"\n" + t(str(ram_dic[21])) + ":\n" +
		t(str(ram_dic[26])) + "\n[color=#FFA500]" + t(str(ram_dic[29])) + "[/color] [color=#D8B4FE](" + str(_c) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(_a4) + "[/color]" +
		"\n[color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](" + str(_c) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(_b4) + "/s[/color]\n\n\n\n\n\n"
		)

	t_estadistica_local_negro.text = t_estadistica_local.text

# visor estadisticas globales
func _estadisticas_mostrar_texto_parasiempre():
	SD_esta = (
	"[bgcolor=#4B3F72][color=#FFFFFF] " + t(str(ram_dic[18])) + ": [/color][/bgcolor]" +

	"\n\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](" + t(str(ram_dic[22])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks) + "[/color]" +

	"\n[color=#777777]──────────────[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](1 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_1) + "[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](1 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cps_1) + "[/color]" +

	"\n[color=#777777]──────────────[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](10 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_10) + "[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](10 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cps_10) + "[/color]" +

	"\n[color=#777777]──────────────[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](20 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_20) + "[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](20 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cps_20) + "[/color]" +

	"\n[color=#777777]──────────────[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](30 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_30) + "[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](30 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cps_30) + "[/color]" +

	"\n[color=#777777]──────────────[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](60 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_60) + "[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](60 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cps_60) + "[/color]" +

	"\n[color=#777777]──────────────[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](" + t(str(ram_dic[23])) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_x) + "[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](" + t(str(ram_dic[23])) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cps_x) + "[/color]" +

	"\n[color=#4B3F72]══════════════[/color]" +

	"\n\n[bgcolor=#4B3F72][color=#FFFFFF] " + t(str(ram_dic[19])) + ": [/color][/bgcolor]" +

	"\n\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](" + t(str(ram_dic[22])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_J2) + "[/color]" +

	"\n[color=#777777]──────────────[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](1 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_1_J2) + "[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](1 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cps_1_J2) + "[/color]" +

	"\n[color=#777777]──────────────[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](10 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_10_J2) + "[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](10 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cps_10_J2) + "[/color]" +

	"\n[color=#777777]──────────────[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](20 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_20_J2) + "[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](20 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cps_20_J2) + "[/color]" +

	"\n[color=#777777]──────────────[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](30 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_30_J2) + "[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](30 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cps_30_J2) + "[/color]" +

	"\n[color=#777777]──────────────[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](60 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_60_J2) + "[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](60 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cps_60_J2) + "[/color]" +

	"\n[color=#777777]──────────────[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](" + t(str(ram_dic[23])) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_x_J2) + "[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](" + t(str(ram_dic[23])) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cps_x_J2) + "[/color]" +

	"\n[color=#4B3F72]══════════════[/color]" +

	"\n\n[bgcolor=#4B3F72][color=#FFFFFF] " + t(str(ram_dic[20])) + ": [/color][/bgcolor]" +

	"\n\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](" + t(str(ram_dic[22])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_J3) + "[/color]" +

	"\n[color=#777777]──────────────[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](1 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_1_J3) + "[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](1 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cps_1_J3) + "[/color]" +

	"\n[color=#777777]──────────────[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](10 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_10_J3) + "[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](10 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cps_10_J3) + "[/color]" +

	"\n[color=#777777]──────────────[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](20 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_20_J3) + "[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](20 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cps_20_J3) + "[/color]" +

	"\n[color=#777777]──────────────[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](30 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_30_J3) + "[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](30 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cps_30_J3) + "[/color]" +

	"\n[color=#777777]──────────────[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](60 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_60_J3) + "[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](60 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cps_60_J3) + "[/color]" +

	"\n[color=#777777]──────────────[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](" + t(str(ram_dic[23])) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_x_J3) + "[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](" + t(str(ram_dic[23])) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cps_x_J3) + "[/color]" +

	"\n[color=#4B3F72]══════════════[/color]" +

	"\n\n[bgcolor=#4B3F72][color=#FFFFFF] " + t(str(ram_dic[21])) + ": [/color][/bgcolor]" +

	"\n\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](" + t(str(ram_dic[22])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_J4) + "[/color]" +

	"\n[color=#777777]──────────────[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](1 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_1_J4) + "[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](1 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cps_1_J4) + "[/color]" +

	"\n[color=#777777]──────────────[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](10 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_10_J4) + "[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](10 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cps_10_J4) + "[/color]" +

	"\n[color=#777777]──────────────[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](20 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_20_J4) + "[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](20 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cps_20_J4) + "[/color]" +

	"\n[color=#777777]──────────────[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](30 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_30_J4) + "[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](30 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cps_30_J4) + "[/color]" +

	"\n[color=#777777]──────────────[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](60 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_60_J4) + "[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](60 " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cps_60_J4) + "[/color]" +

	"\n[color=#777777]──────────────[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](" + t(str(ram_dic[23])) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cliks_x_J4) + "[/color]" +
	"\n" + t(str(ram_dic[25])) + " [color=#cf003a]" + t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](" + t(str(ram_dic[23])) + " " + t(str(ram_dic[31])) + "):[/color] [color=#FFD700]" + str(Mejor_cps_x_J4) + "[/color]" +

	"\n[color=#4B3F72]══════════════[/color]" +

	"\n\n\n\n\n\n\n\n"
	)

	t_estadistica_global_negro.text = SD_esta


#--------------------------LOGICA BOTONES---------------------------------------:
#BOTONES JUGADORES:
#LOS SIGUIENTES BOTONES SON JUGADORES, ASI QUE CADA UNO HACE LO MISMO QUE EL 
#ORIGINAL TECNICAMENTE.
#logica de precionar el boton 1
func _on_boton_pressed() -> void:
	_texto_presionar_plus_one(b_contador)
	_logica_botones_jugadores(1,counter,Mejor_cliks,Mejor_cliks_1,Mejor_cliks_10,Mejor_cliks_20,Mejor_cliks_30,Mejor_cliks_60,Mejor_cliks_x)

#logica de precionar el boton 2
func _on_boton_2_pressed() -> void:
	_texto_presionar_plus_one(b_contador2)
	_logica_botones_jugadores(2,counter_J2,Mejor_cliks_J2,Mejor_cliks_1_J2,Mejor_cliks_10_J2,Mejor_cliks_20_J2,Mejor_cliks_30_J2,Mejor_cliks_60_J2,Mejor_cliks_x_J2)

#logica de precionar el boton 3
func _on_boton_3_pressed() -> void:
	_texto_presionar_plus_one(b_contador3)
	_logica_botones_jugadores(3,counter_J3,Mejor_cliks_J3,Mejor_cliks_1_J3,Mejor_cliks_10_J3,Mejor_cliks_20_J3,Mejor_cliks_30_J3,Mejor_cliks_60_J3,Mejor_cliks_x_J3)

#logica de precionar el boton 4
func _on_boton_4_pressed() -> void:
	_texto_presionar_plus_one(b_contador4)
	_logica_botones_jugadores(4,counter_J4,Mejor_cliks_J4,Mejor_cliks_1_J4,Mejor_cliks_10_J4,Mejor_cliks_20_J4,Mejor_cliks_30_J4,Mejor_cliks_60_J4,Mejor_cliks_x_J4)


#BOTONES REINICIO:
#reiniciar solo el contador
func _on_reset_counter_pressed() -> void:
	if vibration == 1:
		Input.vibrate_handheld(40)
	a_click.play()
	if desafio == false:
		counter = 0
		counter_J2 = 0
		counter_J3 = 0
		counter_J4 = 0
		guardar()

#logica del boton de resetear(reinicia los valores)
func _on_reset_pressed() -> void:
	if vibration == 1:
		Input.vibrate_handheld(40)
	a_click.play()
	Mejor_cliks = 0
	counter = 0
	Mejor_cps_1 = 0
	Mejor_cliks_1 = 0
	Mejor_cps_10 = 0
	Mejor_cliks_10 = 0
	Mejor_cps_20 = 0
	Mejor_cliks_20 = 0
	Mejor_cps_30 = 0
	Mejor_cliks_30 = 0
	Mejor_cps_60 = 0
	Mejor_cliks_60 = 0
	Mejor_cps_x = 0
	Mejor_cliks_x = 0
	# J2
	Mejor_cliks_J2 = 0
	counter_J2 = 0
	Mejor_cps_1_J2 = 0
	Mejor_cliks_1_J2 = 0
	Mejor_cps_10_J2 = 0
	Mejor_cliks_10_J2 = 0
	Mejor_cps_20_J2 = 0
	Mejor_cliks_20_J2 = 0
	Mejor_cps_30_J2 = 0
	Mejor_cliks_30_J2 = 0
	Mejor_cps_60_J2 = 0
	Mejor_cliks_60_J2 = 0
	Mejor_cps_x_J2 = 0
	Mejor_cliks_x_J2 = 0
	# J3
	Mejor_cliks_J3 = 0
	counter_J3 = 0
	Mejor_cps_1_J3 = 0
	Mejor_cliks_1_J3 = 0
	Mejor_cps_10_J3 = 0
	Mejor_cliks_10_J3 = 0
	Mejor_cps_20_J3 = 0
	Mejor_cliks_20_J3 = 0
	Mejor_cps_30_J3 = 0
	Mejor_cliks_30_J3 = 0
	Mejor_cps_60_J3 = 0
	Mejor_cliks_60_J3 = 0
	Mejor_cps_x_J3 = 0
	Mejor_cliks_x_J3 = 0
	# J4
	Mejor_cliks_J4 = 0
	counter_J4 = 0
	Mejor_cps_1_J4 = 0
	Mejor_cliks_1_J4 = 0
	Mejor_cps_10_J4 = 0
	Mejor_cliks_10_J4 = 0
	Mejor_cps_20_J4 = 0
	Mejor_cliks_20_J4 = 0
	Mejor_cps_30_J4 = 0
	Mejor_cliks_30_J4 = 0
	Mejor_cps_60_J4 = 0
	Mejor_cliks_60_J4 = 0
	Mejor_cps_x_J4 = 0
	Mejor_cliks_x_J4 = 0
	guardar()


#PANEL DE OPCIONES:
#ir a las opciones
func _on_opciones_pressed() -> void:
	if vibration == 1:
		Input.vibrate_handheld(40)
	a_click.play()
	opciones = 0

#irse de las opciones
func _on_opciones_2_pressed() -> void:
	if vibration == 1:
		Input.vibrate_handheld(40)
	a_click.play()
	opciones = 1


#DESAFIOS:
#logica de activar desafio 1 s
func _on_desafio_1_pressed() -> void:
	_no_quiero_escrbir_esta_linea_de_desactivacion_siempre(1,1,AD_2,b_desafio_1,SD_Modo_1s)

#logica de activar desafio 10 s
func _on_desafio_10_pressed() -> void:
	_no_quiero_escrbir_esta_linea_de_desactivacion_siempre(2,10,AD_3,b_desafio_10,SD_Modo_10s)

#logica de activar desafio 20 s
func _on_desafio_20_pressed() -> void:
	_no_quiero_escrbir_esta_linea_de_desactivacion_siempre(3,20,AD_4,b_desafio_20,SD_Modo_20s)

#logica de activar desafio 30 s
func _on_desafio_30_pressed() -> void:
	_no_quiero_escrbir_esta_linea_de_desactivacion_siempre(4,30,AD_5,b_desafio_30,SD_Modo_30s)

#logica de activar desafio 60 s
func _on_desafio_60_pressed() -> void:
	_no_quiero_escrbir_esta_linea_de_desactivacion_siempre(5,60,AD_6,b_desafio_60,SD_Modo_60s)

#logica de activar desafio x (y limitandolo)
func _on_desafio_person_pressed() -> void:
	a_click.play()
	if int(t_entrado_personalizada.text) > 0 and int(t_entrado_personalizada.text) is int:
		if vibration == 1:
			Input.vibrate_handheld(40)
		var numero_line_edit = int(t_entrado_personalizada.text)
		if numero_line_edit > 99999999:
			t_entrado_personalizada.text = SD_limite_valor_Modo_Xs
			t_entrado_personalizada.caret_column = t_entrado_personalizada.text.length()
		Segundos_personalizados = int(t_entrado_personalizada.text)
		var SD_Modo_Xs2
		SD_Modo_Xs2 = (t(SD_Modo_Xs) + str(Segundos_personalizados) + t(SD_SEG))
		_no_quiero_escrbir_esta_linea_de_desactivacion_siempre(6,Segundos_personalizados,AD_1,b_desafio_personalizado,SD_Modo_Xs2)
	else:
		if vibration == 1:
			Input.vibrate_handheld(110)
		_textos_explicativos(AD_1.x,AD_1.y,SD_valor_valido)

#poner dato x en android (FORZADOR SI HAY ERROR)
func _on_touch_screen_button_pressed() -> void:
	if vibration == 1:
		Input.vibrate_handheld(40)
	a_click.play()
	t_entrado_personalizada.release_focus()
	await get_tree().process_frame
	t_entrado_personalizada.grab_focus()

func _no_quiero_escrbir_esta_linea_de_desactivacion_siempre(_nu,_sec,_x,_nodo,_text):
	if _nu >=0:
		if v_doble_click_deseleccionador_desafio != _nu:
			_textos_explicativos(_x.x,_x.y,(t(_text)+t(SD_ACTIVADO)))
			_datos_iniciar_desafios(_sec)
			_asignadores(2,_nodo)
			v_doble_click_deseleccionador_desafio = _nu
		else:
			_textos_explicativos(_x.x,_x.y,(t(_text)+t(SD_DESACTIVADO)))
			_datos_iniciar_desafios(0)
			_asignadores(2,botonX)
			v_doble_click_deseleccionador_desafio = 0
	else:
			_datos_iniciar_desafios(0)
			_asignadores(2,botonX)
			v_doble_click_deseleccionador_desafio = 0

func _no_quiero_escrbir_esta_linea_de_desactivacion_siempre_parte2(_a):
	var _B
	_B = t(_a)+t(SD_ACTIVADO)
	return _B

#parametros para iniciar desafio
#SE CARACTERIZA POR SOLO SABER EL EL MAX_SEGUNDOS QUE DEFINIRA QUE DESAFIO ES.
func _datos_iniciar_desafios(_nu):
	if vibration == 1:
		Input.vibrate_handheld(40)
	a_click.play()
	segundos = 0
	counter = 0
	counter_J2 = 0
	counter_J3 = 0
	counter_J4 = 0
	t_tiempo.wait_time = 1
	if _nu != 0:
		desafio = true
		max_segundos = int(_nu)
	else:
		desafio = false
		max_segundos = 0

#BOTONES QUE SALEN AL INICIAR UN DESAFIO
func _on_salir_desafios_pressed() -> void:
	_finalizar_desafio()

func _on_repetidor_desafios_indefinidos_pressed() -> void:
	a_click.play()
	if bucle_desafio == 0:
		rd_repetidor_desafios.texture_normal = rd_texture1
		bucle_desafio = 1
	else:
		bucle_desafio = 0
		rd_repetidor_desafios.texture_normal = rd_texture2


#MODOS DE JUEGO (UNO O MAS JUGADORES):
#AQUI SON LOS BOTONES QUE DIRAN EN QUE MODO DE JUEGO ESTAS 
#activar modo solitario
func _on_solitario_pressed() -> void:
	tipo_de_modo_jugadores = 0
	_asignadores(0,b_solitario)
	_modo_jugadores()

#activar modo uno contra uno
func _on_c_1_pressed() -> void:
	tipo_de_modo_jugadores = 1
	_asignadores(0,b_ucu)
	_modo_jugadores()

#activar modo dos contra dos
func _on_c_2_pressed() -> void:
	tipo_de_modo_jugadores = 2
	_asignadores(0,b_dcd)
	_modo_jugadores()

#activar modo todos contra todos (3 personas)
func _on__contra_todos_3_pressed() -> void:
	_asignadores(0,b_uct3)
	tipo_de_modo_jugadores = 3
	_modo_jugadores()

#activar modo todos contra todos (4 personas)
func _on__contra_todos_4_pressed() -> void:
	_asignadores(0,b_uct4)
	tipo_de_modo_jugadores = 4
	_modo_jugadores()

#logica de reposicionamiento(botones jugadores) de los modos de juego
#ESTE SE ESPECIALIZA EN DECIRLE A LOS BOTONES EN QUE UBICACION COLOCARSE
#SI DEBEN DE ESCALAR O DONDE POSICIONARSE O SIMPLEMENTE OCULTARSE
func _modo_jugadores():
	if vibration == 1:
		Input.vibrate_handheld(40)
	a_click.play()
	lados_si_or_not = 1
	counter = 0
	counter_J2 = 0
	counter_J3 = 0
	counter_J4 = 0
	if tipo_de_modo_jugadores == 0:
		_textos_explicativos(AD_7.x,AD_7.y,SD_Modo_solo,1)
		b_contador.position = p_boton
		b_contador.scale = s_normal
		b_contador2.position = p_botonX
		b_contador3.position = p_botonX
		b_contador4.position = p_botonX
		A_modo.position.x = b_solitario.position.x+63
		A_modo.texture = th_textura_selector_solo
		return
	elif tipo_de_modo_jugadores == 1:
		_textos_explicativos(AD_8.x,AD_8.y,SD_Modo_1c1,1)
		b_contador.position = p_boton_1c1
		b_contador.scale = s_1c1
		b_contador2.position = p_boton2_1c1
		b_contador2.scale = s_1c1
		b_contador3.position = p_botonX
		b_contador4.position = p_botonX
		A_modo.texture = th_texture_selector
		return
	elif tipo_de_modo_jugadores == 2:
		_textos_explicativos(AD_9.x,AD_9.y,SD_Modo_2c2,1)
		b_contador.position = p_boton_t4
		b_contador.scale = s_2c2_t4
		b_contador2.position = p_boton2_t4
		b_contador2.scale = s_2c2_t4
		b_contador3.position = p_boton3_t4
		b_contador3.scale = s_2c2_t4
		b_contador4.position = p_boton4_t4
		b_contador4.scale = s_2c2_t4
		A_modo.texture = th_texture_selector
		return
	elif tipo_de_modo_jugadores == 3:
		_textos_explicativos(AD_10.x,AD_10.y,SD_Modo_t3,1)
		b_contador.position = p_boton_t3
		b_contador.scale = s_t3
		b_contador2.position = p_boton2_t3
		b_contador2.scale = s_t3
		b_contador3.position = p_boton3_t3
		b_contador3.scale = s_t3
		b_contador4.position = p_botonX
		A_modo.texture = th_texture_selector
		return
	elif tipo_de_modo_jugadores == 4:
		_textos_explicativos(AD_11.x,AD_11.y,SD_Modo_t4,1)
		b_contador.position = p_boton_t4
		b_contador.scale = s_2c2_t4
		b_contador2.position = p_boton2_t4
		b_contador2.scale = s_2c2_t4
		b_contador3.position = p_boton3_t4
		b_contador3.scale = s_2c2_t4
		b_contador4.position = p_boton4_t4
		b_contador4.scale = s_2c2_t4
		A_modo.texture = th_texture_selector
		return

#Logica de que pasa si das un click a un boton jugable.
#ESTE SE ESPECIALIZA EN SUMAR UNA UNIDAD A EL VALOR TOTAL CLISKS, Y ESTE ES EL RESPONSABLE
#DE QUE LOS BOTONES AUMENTEN SU CONTADOR, ADEMAS SE ESPECIALIZA EN ACTUALIZAR SI HAY UN 
#NUEVO RECORD DE CLICKS, YA SEA NORMAL, DESAFIO O SEA OTRO JUGADOR(BOTON)
func _logica_botones_jugadores(_numero_player,_counter,_Mejor_cliks,_Mejor_cliks1,_Mejor_cliks10,_Mejor_cliks20,_Mejor_cliks30,_Mejor_cliks60,_Mejor_cliksx):
	total_counter += 1
	if vibration == 1:
		Input.vibrate_handheld(40)
	a_click.play()
	if desafio == false: #si no hay desafio
		if _numero_player == 1:
			counter += 1
		elif _numero_player == 2:
			counter_J2 += 1
		elif _numero_player == 3:
			counter_J3 += 1
		elif _numero_player == 4:
			counter_J4 += 1
	elif desafio == true: #si hay desafio
		if _numero_player == 1:
			counter += 1
		elif _numero_player == 2:
			counter_J2 += 1
		elif _numero_player == 3:
			counter_J3 += 1
		elif _numero_player == 4:
			counter_J4 += 1
		iniciar_desafio = 1
	#logica si el contador pasa el record anterior, sea normal o desafio ((_counter + 1) ese +1 porq antes de esto se suma un valor asi q _counter estaria desactualizado)
	if (_counter + 1) > _Mejor_cliks and desafio == false: #superar el record normal
		if _numero_player == 1:
			Mejor_cliks = counter
		elif _numero_player == 2:
			Mejor_cliks_J2 = counter_J2
		elif _numero_player == 3:
			Mejor_cliks_J3 = counter_J3
		elif _numero_player == 4:
			Mejor_cliks_J4 = counter_J4
	elif (_counter + 1) > _Mejor_cliks20 and desafio == true and max_segundos == 20: #superar el record del desafio 20
		if _numero_player == 1:
			Mejor_cliks_20 = counter
		elif _numero_player == 2:
			Mejor_cliks_20_J2 = counter_J2
		elif _numero_player == 3:
			Mejor_cliks_20_J3 = counter_J3
		elif _numero_player == 4:
			Mejor_cliks_20_J4 = counter_J4
	elif (_counter + 1) > _Mejor_cliks1 and desafio == true and max_segundos == 1: #superar el record del desafio 1
		if _numero_player == 1:
			Mejor_cliks_1 = counter
		elif _numero_player == 2:
			Mejor_cliks_1_J2 = counter_J2
		elif _numero_player == 3:
			Mejor_cliks_1_J3 = counter_J3
		elif _numero_player == 4:
			Mejor_cliks_1_J4 = counter_J4
	elif (_counter + 1) > _Mejor_cliks10 and desafio == true and max_segundos == 10: #superar el record del desafio 10
		if _numero_player == 1:
			Mejor_cliks_10 = counter
		elif _numero_player == 2:
			Mejor_cliks_10_J2 = counter_J2
		elif _numero_player == 3:
			Mejor_cliks_10_J3 = counter_J3
		elif _numero_player == 4:
			Mejor_cliks_10_J4 = counter_J4
	elif (_counter + 1) > _Mejor_cliks30 and desafio == true and max_segundos == 30: #superar el record del desafio 30
		if _numero_player == 1:
			Mejor_cliks_30 = counter
		elif _numero_player == 2:
			Mejor_cliks_30_J2 = counter_J2
		elif _numero_player == 3:
			Mejor_cliks_30_J3 = counter_J3
		elif _numero_player == 4:
			Mejor_cliks_30_J4 = counter_J4
	elif (_counter + 1) > _Mejor_cliks60 and desafio == true and max_segundos == 60: #superar el record del desafio 60
		if _numero_player == 1:
			Mejor_cliks_60 = counter
		elif _numero_player == 2:
			Mejor_cliks_60_J2 = counter_J2
		elif _numero_player == 3:
			Mejor_cliks_60_J3 = counter_J3
		elif _numero_player == 4:
			Mejor_cliks_60_J4 = counter_J4
	elif (_counter + 1) > _Mejor_cliksx and desafio == true and max_segundos == Segundos_personalizados: #superar el record del desafio x
		if _numero_player == 1:
			Mejor_cliks_x = counter
		elif _numero_player == 2:
			Mejor_cliks_x_J2 = counter_J2
		elif _numero_player == 3:
			Mejor_cliks_x_J3 = counter_J3
		elif _numero_player == 4:
			Mejor_cliks_x_J4 = counter_J4
	guardar()

#sirve para las opciones,saber cual exactamente esta activada.
func _asignadores(_a,_b):#tipo de dato, nodo/boton/etc
	if _a == 0:
		A_modo.global_position = _b.global_position
	elif _a == 1:
		A_modo_estadistica.global_position = _b.global_position
	elif _a == 2:
		A_tiempos.global_position = _b.global_position


#botones de abajo:
#SIRVE PARA VER LAS DEMAS OPCIONES O DEMAS COSAS.
func _on_home_pressed() -> void:#MODO CASA/HOGAR(NORMAL)
	a_click.play()
	_botones_abajo(0)
	hme1.texture_normal = th_texture1

func _on_estadist_pressed() -> void:#MODO DE ESTADISTICAS
	_estadisticas_mostrar_texto_parasiempre()
	SD_estadisticas = SD_esta
	_para_estadisticas_opciones(0,1)

func _on_skins_pressed() -> void:#MODO DE SKINS
	a_click.play()
	_botones_abajo(2)

func _on_opcion_pressed() -> void:#MODO DE OPCIONES
	a_click.play()
	_botones_abajo(3)

#LOGICA DE BOTONES ABAJO:
func _botones_abajo(_a):
	if desafio == false or opciones == 0:
		match _a:
			0:
				n_estadisticas_opciones_down.position.x = 1080.0
				n_skins_opciones_down.position.x = 1080.0
				n_opciones_opciones_down.position.x = 1080.0
				if opciones == 0:
					n_todo.position.x = 720
				elif opciones == 1:
					n_todo.position.x = 0
				v_home = 0
			1:
				n_estadisticas_opciones_down.position.x = 360
				n_skins_opciones_down.position.x = 1080.0
				n_opciones_opciones_down.position.x = 1080.0
				n_todo.position.x = -1000
				v_home = 1
			2:
				n_estadisticas_opciones_down.position.x = 1080.0
				n_skins_opciones_down.position.x = 360
				n_opciones_opciones_down.position.x = 1080.0
				n_todo.position.x = -1000
				v_home = 1
			3:
				n_estadisticas_opciones_down.position.x = 1080.0
				n_skins_opciones_down.position.x = 1080.0
				n_opciones_opciones_down.position.x = 360
				n_todo.position.x = -1000
				v_home = 1


#BOTONES QUE SON DE ESTADISTICAS Y SU LOGICA
#1c1
func _on_estadisticas_pressed() -> void:
	_para_estadisticas_opciones(1,0,$"Node2D/Botones_ocultar desafio/Estadisticas_activa_1c1")

#2c2
func _on_estadisticas_2_pressed() -> void:
	_para_estadisticas_opciones(2,0,$"Node2D/Botones_ocultar desafio/Estadisticas_activa_2c2")

#solo
func _on_estadisticas_3_pressed() -> void:
	_para_estadisticas_opciones(3,0,$"Node2D/Botones_ocultar desafio/Estadisticas_activa_solitario")

#tct3
func _on_estadisticas_4_pressed() -> void:
	_para_estadisticas_opciones(4,0,$"Node2D/Botones_ocultar desafio/Estadisticas_activa_tct3")

#tct4
func _on_estadisticas_5_pressed() -> void:
	_para_estadisticas_opciones(5,0,$"Node2D/Botones_ocultar desafio/Estadisticas_activa_tct4")

#10s
func _on_estadisticas_6_pressed() -> void:
	_para_estadisticas_opciones(6,1)

#30s
func _on_estadisticas_7_pressed() -> void:
	_para_estadisticas_opciones(7,1)

#1s
func _on_estadisticas_8_pressed() -> void:
	_para_estadisticas_opciones(8,1)

#20s
func _on_estadisticas_9_pressed() -> void:
	_para_estadisticas_opciones(9,1)

#60s
func _on_estadisticas_10_pressed() -> void:
	_para_estadisticas_opciones(10,1)

#Xs
func _on_estadisticas_11_pressed() -> void:
	_para_estadisticas_opciones(11,1)


#--------------------------LOGICA GUARDAR_CARGAR--------------------------------:
#sistema de guardado de archivos
func guardar():
	var archivo = FileAccess.open(RUTA_GUARDADO,FileAccess.WRITE)
	var datos = {
		"Mejor_cliks": Mejor_cliks,
		"Mejor_cps_1": Mejor_cps_1,
		"Mejor_cliks_1": Mejor_cliks_1,
		"Mejor_cps_10": Mejor_cps_10,
		"Mejor_cliks_10": Mejor_cliks_10,
		"Mejor_cps_20": Mejor_cps_20,
		"Mejor_cliks_20": Mejor_cliks_20,
		"Mejor_cps_30": Mejor_cps_30,
		"Mejor_cliks_30": Mejor_cliks_30,
		"Mejor_cps_60": Mejor_cps_60,
		"Mejor_cliks_60": Mejor_cliks_60,
		"Mejor_cps_Personalizado": Mejor_cps_x,
		"Mejor_cliks_Personalizado": Mejor_cliks_x,
		"Mejor_cliks_J2": Mejor_cliks_J2,
		"Mejor_cps_1_J2": Mejor_cps_1_J2,
		"Mejor_cliks_1_J2": Mejor_cliks_1_J2,
		"Mejor_cps_10_J2": Mejor_cps_10_J2,
		"Mejor_cliks_10_J2": Mejor_cliks_10_J2,
		"Mejor_cps_20_J2": Mejor_cps_20_J2,
		"Mejor_cliks_20_J2": Mejor_cliks_20_J2,
		"Mejor_cps_30_J2": Mejor_cps_30_J2,
		"Mejor_cliks_30_J2": Mejor_cliks_30_J2,
		"Mejor_cps_60_J2": Mejor_cps_60_J2,
		"Mejor_cliks_60_J2": Mejor_cliks_60_J2,
		"Mejor_cps_Personalizado_J2": Mejor_cps_x_J2,
		"Mejor_cliks_Personalizado_J2": Mejor_cliks_x_J2,
		"Mejor_cliks_J3": Mejor_cliks_J3,
		"Mejor_cps_1_J3": Mejor_cps_1_J3,
		"Mejor_cliks_1_J3": Mejor_cliks_1_J3,
		"Mejor_cps_10_J3": Mejor_cps_10_J3,
		"Mejor_cliks_10_J3": Mejor_cliks_10_J3,
		"Mejor_cps_20_J3": Mejor_cps_20_J3,
		"Mejor_cliks_20_J3": Mejor_cliks_20_J3,
		"Mejor_cps_30_J3": Mejor_cps_30_J3,
		"Mejor_cliks_30_J3": Mejor_cliks_30_J3,
		"Mejor_cps_60_J3": Mejor_cps_60_J3,
		"Mejor_cliks_60_J3": Mejor_cliks_60_J3,
		"Mejor_cps_Personalizado_J3": Mejor_cps_x_J3,
		"Mejor_cliks_Personalizado_J3": Mejor_cliks_x_J3,
		"Mejor_cliks_J4": Mejor_cliks_J4,
		"Mejor_cps_1_J4": Mejor_cps_1_J4,
		"Mejor_cliks_1_J4": Mejor_cliks_1_J4,
		"Mejor_cps_10_J4": Mejor_cps_10_J4,
		"Mejor_cliks_10_J4": Mejor_cliks_10_J4,
		"Mejor_cps_20_J4": Mejor_cps_20_J4,
		"Mejor_cliks_20_J4": Mejor_cliks_20_J4,
		"Mejor_cps_30_J4": Mejor_cps_30_J4,
		"Mejor_cliks_30_J4": Mejor_cliks_30_J4,
		"Mejor_cps_60_J4": Mejor_cps_60_J4,
		"Mejor_cliks_60_J4": Mejor_cliks_60_J4,
		"Mejor_cps_Personalizado_J4": Mejor_cps_x_J4,
		"Mejor_cliks_Personalizado_J4": Mejor_cliks_x_J4,
		"Total_Clicks": total_counter,
		"Idioma": columna,
		"confeti": confeti,
		"vibracion": vibration,
		"+1": plus1,
		"volumen_effect": volumen_effect,
		"volumen_music": volumen_music
	}
	archivo.store_var(datos)
	archivo.close()

#sistema de cargado de archivos
func cargar():
	if FileAccess.file_exists(RUTA_GUARDADO):
		var archivo = FileAccess.open(RUTA_GUARDADO, FileAccess.READ)
		
		var datos = archivo.get_var()
		
		if datos is Dictionary:
			Mejor_cliks = datos.get("Mejor_cliks", 0)
			Mejor_cps_1 = datos.get("Mejor_cps_1", 0.0)
			Mejor_cliks_1 = datos.get("Mejor_cliks_1", 0)
			Mejor_cps_10 = datos.get("Mejor_cps_10", 0.0)
			Mejor_cliks_10 = datos.get("Mejor_cliks_10", 0)
			Mejor_cps_20 = datos.get("Mejor_cps_20", 0.0)
			Mejor_cliks_20 = datos.get("Mejor_cliks_20", 0)
			Mejor_cps_30 = datos.get("Mejor_cps_30", 0.0)
			Mejor_cliks_30 = datos.get("Mejor_cliks_30", 0)
			Mejor_cps_60 = datos.get("Mejor_cps_60", 0.0)
			Mejor_cliks_60 = datos.get("Mejor_cliks_60", 0)
			Mejor_cps_x = datos.get("Mejor_cps_Personalizado", 0.0)
			Mejor_cliks_x = datos.get("Mejor_cliks_Personalizado", 0)
			Mejor_cliks_J2 = datos.get("Mejor_cliks_J2", 0)
			Mejor_cps_1_J2 = datos.get("Mejor_cps_1_J2", 0.0)
			Mejor_cliks_1_J2 = datos.get("Mejor_cliks_1_J2", 0)
			Mejor_cps_10_J2 = datos.get("Mejor_cps_10_J2", 0.0)
			Mejor_cliks_10_J2 = datos.get("Mejor_cliks_10_J2", 0)
			Mejor_cps_20_J2 = datos.get("Mejor_cps_20_J2", 0.0)
			Mejor_cliks_20_J2 = datos.get("Mejor_cliks_20_J2", 0)
			Mejor_cps_30_J2 = datos.get("Mejor_cps_30_J2", 0.0)
			Mejor_cliks_30_J2 = datos.get("Mejor_cliks_30_J2", 0)
			Mejor_cps_60_J2 = datos.get("Mejor_cps_60_J2", 0.0)
			Mejor_cliks_60_J2 = datos.get("Mejor_cliks_60_J2", 0)
			Mejor_cps_x_J2 = datos.get("Mejor_cps_Personalizado_J2", 0.0)
			Mejor_cliks_x_J2 = datos.get("Mejor_cliks_Personalizado_J2", 0)
			Mejor_cliks_J3 = datos.get("Mejor_cliks_J3", 0)
			Mejor_cps_1_J3 = datos.get("Mejor_cps_1_J3", 0.0)
			Mejor_cliks_1_J3 = datos.get("Mejor_cliks_1_J3", 0)
			Mejor_cps_10_J3 = datos.get("Mejor_cps_10_J3", 0.0)
			Mejor_cliks_10_J3 = datos.get("Mejor_cliks_10_J3", 0)
			Mejor_cps_20_J3 = datos.get("Mejor_cps_20_J3", 0.0)
			Mejor_cliks_20_J3 = datos.get("Mejor_cliks_20_J3", 0)
			Mejor_cps_30_J3 = datos.get("Mejor_cps_30_J3", 0.0)
			Mejor_cliks_30_J3 = datos.get("Mejor_cliks_30_J3", 0)
			Mejor_cps_60_J3 = datos.get("Mejor_cps_60_J3", 0.0)
			Mejor_cliks_60_J3 = datos.get("Mejor_cliks_60_J3", 0)
			Mejor_cps_x_J3 = datos.get("Mejor_cps_Personalizado_J3", 0.0)
			Mejor_cliks_x_J3 = datos.get("Mejor_cliks_Personalizado_J3", 0)
			Mejor_cliks_J4 = datos.get("Mejor_cliks_J4", 0)
			Mejor_cps_1_J4 = datos.get("Mejor_cps_1_J4", 0.0)
			Mejor_cliks_1_J4 = datos.get("Mejor_cliks_1_J4", 0)
			Mejor_cps_10_J4 = datos.get("Mejor_cps_10_J4", 0.0)
			Mejor_cliks_10_J4 = datos.get("Mejor_cliks_10_J4", 0)
			Mejor_cps_20_J4 = datos.get("Mejor_cps_20_J4", 0.0)
			Mejor_cliks_20_J4 = datos.get("Mejor_cliks_20_J4", 0)
			Mejor_cps_30_J4 = datos.get("Mejor_cps_30_J4", 0.0)
			Mejor_cliks_30_J4 = datos.get("Mejor_cliks_30_J4", 0)
			Mejor_cps_60_J4 = datos.get("Mejor_cps_60_J4", 0.0)
			Mejor_cliks_60_J4 = datos.get("Mejor_cliks_60_J4", 0)
			Mejor_cps_x_J4 = datos.get("Mejor_cps_Personalizado_J4", 0.0)
			Mejor_cliks_x_J4 = datos.get("Mejor_cliks_Personalizado_J4", 0)
			total_counter = datos.get("Total_Clicks",0)
			columna = datos.get("Idioma",0)
			confeti = datos.get("confeti",0)
			vibration = datos.get("vibracion",0)
			plus1 = datos.get("+1",0)
			volumen_effect = datos.get("volumen_effect",1)
			volumen_music = datos.get("volumen_music",1)
		if datos.has("volumen_effect"):
			barra_vol_effect.value = datos["volumen_effect"]

		if datos.has("volumen_music"):
			barra_vol_music.value = datos["volumen_music"]
		archivo.close()

#sistema de ver el guardado.
func ver_guardado_texto():
	if FileAccess.file_exists(RUTA_GUARDADO):
		var archivo = FileAccess.open(RUTA_GUARDADO, FileAccess.READ)
		var datos = archivo.get_var()
		archivo.close()
		
		var texto = JSON.stringify(datos, "\t")
		
		var archivo_texto = FileAccess.open("user://Clickspeed_debug.txt", FileAccess.WRITE)
		archivo_texto.store_string(texto)
		archivo_texto.close()


#--------------------------LOGICA TEXTO-----------------------------------------:


#textos importantes del juego.
#ES EL ENCARGADO DE ACTUALIZAR LOS TEXTOS QUE SI O SI SE VEAN EN EL JUEGO
#COMO CONTADORES Y EL TIEMPO
func _textos():
	t_lado_a_negro.text = t_lado_a.text
	t_lado_b_negro.text = t_lado_b.text
	SD_negro.text = A_label.text
	t_counter.text = str(counter)
	t_counter2.text = str(counter_J2)
	t_counter3.text = str(counter_J3)
	t_counter4.text = str(counter_J4)
	t_time_text.text = (str(segundos) + "S - " + str(max_segundos) + "S")
	t_time_contorno_text.text = t_time_text.text

func _texto_tamaño_fuente():
	var _inde = 0 
	var _inde3 = 0 # richs
	var _inde2  = 0# labels
	#rich
	_datos_texto(0,t_estadistica_global_negro,_inde,_inde3,57,1)
	_datos_texto(0,t_estadistica_global,_inde,_inde3,57,1)
	_datos_texto(0,t_estadistica_local_negro,_inde,_inde3,69,1)
	_datos_texto(0,t_estadistica_local,_inde,_inde3,69,1)
	#label
	_datos_texto(1,t_proximamente,_inde,_inde2,104,1)
	_datos_texto(1,t_proximamente_negro,_inde,_inde2,104,1)
	_datos_texto(1,SD_negro,_inde,_inde2,35,1)
	_datos_texto(1,A_label,_inde,_inde2,35,1)
	if columna > -1 and columna < 5:
		_inde = fuente_2
		_inde2 = 0
		_inde3 = 0
	elif columna > 4 and columna <7:
		_inde = fuente_1
		_inde3 = menos_14
		if columna == 5:
			_inde2 = menos_16
		else:
			_inde2 = menos_6
	elif columna == 7:
		_inde = fuente_1
		_inde2 = 0
		_inde3 = menos_14
	#rich
	_datos_texto(0,t_estadistica_global_negro,_inde,_inde3,57)
	_datos_texto(0,t_estadistica_global,_inde,_inde3,57)
	_datos_texto(0,t_estadistica_local_negro,_inde,_inde3,69)
	_datos_texto(0,t_estadistica_local,_inde,_inde3,69)
	#label
	_datos_texto(1,t_proximamente,_inde,_inde2,104)
	_datos_texto(1,t_proximamente_negro,_inde,_inde2,104)
	_datos_texto(1,SD_negro,_inde,_inde2,35)
	_datos_texto(1,A_label,_inde,_inde2,35)

func _datos_texto(_0,_a,_b,_c,_d = 0,_e = 0):
	if _e == 0:
		if _0 == 1:
			_a.add_theme_font_override("font",_b)
			_a.add_theme_font_size_override("font_size",_a.get_theme_font_size("font_size")-_c)
		else:
			_a.add_theme_font_override("normal_font",_b)
			_a.add_theme_font_size_override("normal_font_size",_a.get_theme_font_size("normal_font_size")-_c)
	elif _e == 1:
		if _0 == 1:
			_a.add_theme_font_size_override("font_size",_d)
		else:
			_a.add_theme_font_size_override("normal_font_size",_d)


#textos que aparecen cuando haces click a las opciones
#ES EL ENCARGADO LOGICO DE DECIR EN QUE POSICION Y QUE DEBE DE DECIR EL TEXTO 
#QUE APARECERA
func _textos_explicativos(_a,_b,_c,_d = 0):
	A_texto_desaparecedor.position = Vector2(_a,_b)
	A_texto.visible = true
	if _d != 1:
		A_label.text = t(_c)
	else:
		A_label.text = t(_c)+t(SD_ACTIVADO)
	A_animation_valor_valido.stop()
	A_animation_valor_valido.play("UNICA")

#AL PRESIONAR SALE UNA COPIA DE +1
func _texto_presionar_plus_one(_a):
	if plus1 == 1:
		var texto = click_text.instantiate()
		add_child(texto)
		var __a = randi_range(0,16)
		var _tex
		var _size = randf_range(1.8,2.3)
		match __a:
			0:
				_tex = _a
			1:
				_tex = _a.get_node("prueba/xxx/1")
			2:
				_tex = _a.get_node("prueba/xxx/2")
			3:
				_tex = _a.get_node("prueba/xxx/3")
			4:
				_tex = _a.get_node("prueba/xxx/4")
			5:
				_tex = _a.get_node("prueba/xxx/5")
			6:
				_tex = _a.get_node("prueba/xxx/6")
			7:
				_tex = _a.get_node("prueba/xxx/7")
			8:
				_tex = _a.get_node("prueba/xxx/8")
			9:
				_tex = _a.get_node("prueba/xxx/9")
			10:
				_tex = _a.get_node("prueba/xxx/10")
			11:
				_tex = _a.get_node("prueba/xxx/11")
			12:
				_tex = _a.get_node("prueba/xxx/12")
			13:
				_tex = _a.get_node("prueba/xxx/13")
			14:
				_tex = _a.get_node("prueba/xxx/14")
			15:
				_tex = _a.get_node("prueba/xxx/15")
			16:
				_tex = _a.get_node("prueba/xxx/16")
		texto.global_position = _tex.global_position
		texto.position.x -= texto.size.x / _size
		texto.position.y -= 20
		if tipo_de_modo_jugadores == 0:
			texto.scale = Vector2(1.26,1.26)
		elif tipo_de_modo_jugadores == 1:
			texto.scale = Vector2(1.10,1.10)
		else:
			texto.scale = Vector2(1,1)
		texto.animar()


#--------------------------TRADUCCIONES----------------------------------------:
func t(id: String) -> String:
	return tr(id).replace("\\n", "\n")

func _columnas():
	var _As
	_texto_tamaño_fuente()
	match columna:
		0:
			_As = "ESP"
		1:
			_As = "ING"
		2:
			_As = "POR"
		3:
			_As = "FRA"
		4:
			_As = "ITA"
		5:
			_As = "RUS"
		6:
			_As = "JPN"
		7:
			_As = "KOR"
	return _As


func _on_esp_pressed() -> void:
	_traductor(0)

func _on_ing_pressed() -> void:
	_traductor(1)

func _on_por_pressed() -> void:
	_traductor(2)

func _on_fra_pressed() -> void:
	_traductor(3)

func _on_ita_pressed() -> void:
	_traductor(4)

func _on_rus_pressed() -> void:
	_traductor(5)

func _on_jpn_pressed() -> void:
	_traductor(6)

func _on_kor_pressed() -> void:
	_traductor(7)

func _traductor(_a):
	a_click.play()
	columna = _a
	guardar()
	TranslationServer.set_locale(_columnas())


func _on_effect_volume(value: float) -> void:
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("effect"),linear_to_db(value))
	volumen_effect = barra_vol_effect.value
	guardar()


func _on_music_volume(value: float) -> void:
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("music"),linear_to_db(value))
	volumen_music = barra_vol_music.value
	guardar()


func _on_vibracion_pressed() -> void:
	vibration = _opciones_pantalla_efectos(vibration)
	guardar()

func _on_confeti_pressed() -> void:
	confeti = _opciones_pantalla_efectos(confeti)
	guardar()

func _on_plus_1_pressed() -> void:
	plus1 = _opciones_pantalla_efectos(plus1)
	guardar()

func _opciones_pantalla_efectos(_a):
	a_click.play()
	if _a == 0:
		_a = 1
	else:
		_a = 0
	return _a
#aver github intentalo
