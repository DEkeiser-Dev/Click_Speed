extends Node

#contador normal:
var counter = 0 #contador normal
#desafios con sus respectivos jugadores Y DATOS EXTRA:
var tipo_de_modo_jugadores = 0 # 0 un jugador, 1 1c1, 2 2c2, 3 todos contra todos(3), 4 todos contra todos (4)

var counter_J2 = 0 # contador normal
var counter_J3 = 0
var counter_J4 = 0

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
var n_dekeiser_declaracion
var n_barra_abajo_total
var n_barra_competitiva
var n_nodo_barra
#tiempo
var t_tiempo
#ruta de guardato:
const RUTA_GUARDADO = "user://ClickSpeed.deker" #ruta de guardado
#opciones
var opciones = 0
var iniciar_lugar_opciones = 1
var camino = 0
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
var rd_texture1 = preload("res://Assets/Arte2d/Colores_posicion_botones/t3.jpg")
var rd_texture2 = preload("res://Assets/Arte2d/Colores_posicion_botones/t4.jpg")
#barra competitiva
var escala_actual = 0
var escala
var suma_total
#textura del boton home cuando eleiges una estadistica lcoal
var th_texture1 = preload("res://Assets/Arte2d/opciones/opciones_cuadrado/casa_normal.svg")
var th_texture2 = preload("res://Assets/Arte2d/opciones/opciones_cuadrado/casa_salir.svg")
var th_textura_selector_solo = preload("res://Assets/Arte2d/botones/selector/selector_solo.svg")
var th_texture_selector = preload("res://Assets/Arte2d/botones/selector/selector.svg")
var hme1
#14 / 12
#fuentes y tamañp
var fuente_1 = preload("res://Assets/Fuente/Super Starfish.ttf")
var menos_6 = 10
#confeti
var confeti_señal
#volumen
var barra_vol_effect
var barra_vol_music
#fondo
var F_verde_2c2
var F_rojo_2c2
#paneles
var P_efectos
var P_idioma
#checkbuttons
var CB_plus1
var CB_confeti
var CB_vibracion

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
