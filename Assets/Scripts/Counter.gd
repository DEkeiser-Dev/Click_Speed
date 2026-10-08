extends CanvasLayer

signal Interticial_apoyo_dekeiser
signal Dekeiser_sentimental
signal Dekeiser_NO_sentimental

@export var depurar : bool
@export var posicion_noto_botones_x : Vector2
@export var desafio : bool #si se juega el desafio

var XDIC = {
	"SOLO": {
		"Mejor_cps_1": 0,
		"Mejor_cliks_1": 0,
		"datos_1" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_10": 0,
		"Mejor_cliks_10": 0,
		"datos_10" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_20": 0,
		"Mejor_cliks_20": 0,
		"datos_20" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_30": 0,
		"Mejor_cliks_30": 0,
		"datos_30" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_60": 0,
		"Mejor_cliks_60": 0,
		"datos_60" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_Personalizado": 0,
		"Mejor_cliks_Personalizado": 0,
		"SEG": 0,
		"datos_x" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
	},



	"1C1": {
		"Mejor_cps_1": 0,
		"Mejor_cliks_1": 0,
		"datos_1" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_10": 0,
		"Mejor_cliks_10": 0,
		"datos_10" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_20": 0,
		"Mejor_cliks_20": 0,
		"datos_20" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_30": 0,
		"Mejor_cliks_30": 0,
		"datos_30" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_60": 0,
		"Mejor_cliks_60": 0,
		"datos_60" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_Personalizado": 0,
		"Mejor_cliks_Personalizado": 0,
		"SEG": 0,
		"datos_x" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},

		"Mejor_cps_1_J2": 0,
		"Mejor_cliks_1_J2": 0,
		"datos_1_j2" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_10_J2": 0,
		"Mejor_cliks_10_J2": 0,
		"datos_10_j2" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_20_J2": 0,
		"Mejor_cliks_20_J2": 0,
		"datos_20_j2" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_30_J2": 0,
		"Mejor_cliks_30_J2": 0,
		"datos_30_j2" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_60_J2": 0,
		"Mejor_cliks_60_J2": 0,
		"datos_60_j2" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_Personalizado_J2": 0,
		"Mejor_cliks_Personalizado_J2": 0,
		"SEG2": 0,
		"datos_x_j2" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
	},



	"2C2": {
		"Mejor_cps_1": 0,
		"Mejor_cliks_1": 0,
		"datos_1" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_10": 0,
		"Mejor_cliks_10": 0,
		"datos_10" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_20": 0,
		"Mejor_cliks_20": 0,
		"datos_20" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_30": 0,
		"Mejor_cliks_30": 0,
		"datos_30" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_60": 0,
		"Mejor_cliks_60": 0,
		"datos_60" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_Personalizado": 0,
		"Mejor_cliks_Personalizado": 0,
		"SEG": 0,
		"datos_x" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},

		"Mejor_cps_1_J2": 0,
		"Mejor_cliks_1_J2": 0,
		"datos_1_j2" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_10_J2": 0,
		"Mejor_cliks_10_J2": 0,
		"datos_10_j2" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_20_J2": 0,
		"Mejor_cliks_20_J2": 0,
		"datos_20_j2" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_30_J2": 0,
		"Mejor_cliks_30_J2": 0,
		"datos_30_j2" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_60_J2": 0,
		"Mejor_cliks_60_J2": 0,
		"datos_60_j2" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_Personalizado_J2": 0,
		"Mejor_cliks_Personalizado_J2": 0,
		"SEG2": 0,
		"datos_x_j2" : {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
	},



	"3P": {
		"Mejor_cps_1": 0,
		"Mejor_cliks_1": 0,
		"datos_1": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_10": 0,
		"Mejor_cliks_10": 0,
		"datos_10": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_20": 0,
		"Mejor_cliks_20": 0,
		"datos_20": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_30": 0,
		"Mejor_cliks_30": 0,
		"datos_30": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_60": 0,
		"Mejor_cliks_60": 0,
		"datos_60": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_Personalizado": 0,
		"Mejor_cliks_Personalizado": 0,
		"SEG": 0,
		"datos_x": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},

		"Mejor_cps_1_J2": 0,
		"Mejor_cliks_1_J2": 0,
		"datos_1_j2": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_10_J2": 0,
		"Mejor_cliks_10_J2": 0,
		"datos_10_j2": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_20_J2": 0,
		"Mejor_cliks_20_J2": 0,
		"datos_20_j2": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_30_J2": 0,
		"Mejor_cliks_30_J2": 0,
		"datos_30_j2": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_60_J2": 0,
		"Mejor_cliks_60_J2": 0,
		"datos_60_j2": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_Personalizado_J2": 0,
		"Mejor_cliks_Personalizado_J2": 0,
		"SEG2": 0,
		"datos_x_j2": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},

		"Mejor_cps_1_J3": 0,
		"Mejor_cliks_1_J3": 0,
		"datos_1_j3": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_10_J3": 0,
		"Mejor_cliks_10_J3": 0,
		"datos_10_j3": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_20_J3": 0,
		"Mejor_cliks_20_J3": 0,
		"datos_20_j3": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_30_J3": 0,
		"Mejor_cliks_30_J3": 0,
		"datos_30_j3": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_60_J3": 0,
		"Mejor_cliks_60_J3": 0,
		"datos_60_j3": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_Personalizado_J3": 0,
		"Mejor_cliks_Personalizado_J3": 0,
		"SEG3": 0,
		"datos_x_j3": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		}
	},



	"4P": {
		"Mejor_cps_1": 0,
		"Mejor_cliks_1": 0,
		"datos_1": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_10": 0,
		"Mejor_cliks_10": 0,
		"datos_10": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_20": 0,
		"Mejor_cliks_20": 0,
		"datos_20": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_30": 0,
		"Mejor_cliks_30": 0,
		"datos_30": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_60": 0,
		"Mejor_cliks_60": 0,
		"datos_60": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_Personalizado": 0,
		"Mejor_cliks_Personalizado": 0,
		"SEG": 0,
		"datos_x": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},

		"Mejor_cps_1_J2": 0,
		"Mejor_cliks_1_J2": 0,
		"datos_1_j2": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_10_J2": 0,
		"Mejor_cliks_10_J2": 0,
		"datos_10_j2": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_20_J2": 0,
		"Mejor_cliks_20_J2": 0,
		"datos_20_j2": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_30_J2": 0,
		"Mejor_cliks_30_J2": 0,
		"datos_30_j2": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_60_J2": 0,
		"Mejor_cliks_60_J2": 0,
		"datos_60_j2": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_Personalizado_J2": 0,
		"Mejor_cliks_Personalizado_J2": 0,
		"SEG2": 0,
		"datos_x_j2": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},

		"Mejor_cps_1_J3": 0,
		"Mejor_cliks_1_J3": 0,
		"datos_1_j3": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_10_J3": 0,
		"Mejor_cliks_10_J3": 0,
		"datos_10_j3": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_20_J3": 0,
		"Mejor_cliks_20_J3": 0,
		"datos_20_j3": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_30_J3": 0,
		"Mejor_cliks_30_J3": 0,
		"datos_30_j3": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_60_J3": 0,
		"Mejor_cliks_60_J3": 0,
		"datos_60_j3": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_Personalizado_J3": 0,
		"Mejor_cliks_Personalizado_J3": 0,
		"SEG3": 0,
		"datos_x_j3": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},

		"Mejor_cps_1_J4": 0,
		"Mejor_cliks_1_J4": 0,
		"datos_1_j4": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_10_J4": 0,
		"Mejor_cliks_10_J4": 0,
		"datos_10_j4": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_20_J4": 0,
		"Mejor_cliks_20_J4": 0,
		"datos_20_j4": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_30_J4": 0,
		"Mejor_cliks_30_J4": 0,
		"datos_30_j4": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_60_J4": 0,
		"Mejor_cliks_60_J4": 0,
		"datos_60_j4": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		},
		"Mejor_cps_Personalizado_J4": 0,
		"Mejor_cliks_Personalizado_J4": 0,
		"SEG4": 0,
		"datos_x_j4": {
			"CPS": [],
			"M_Clicks": 0,
			"M_Seg": 0
		}
	},



	"Total_Clicks": 0,
	"Idioma": 0,
	"confeti": 1,
	"vibracion": 1,
	"+1": 1,
	"volumen_effect": 1,
	"volumen_music": 1,
	"AYuda_Deker": 0
}

#traducion
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
	42: "NUMBER",
	43: "MODE",
	44: "UNO_CONTRA_UNO",
	45: "DOS_CONTRA_DOS",
	46: "PLAYERS",
	47: "SOLITARIO",
	48: "TEAM"
}
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
#graficas
var datos_1 = {
	"M_Clicks": 0,
	"M_Seg": 0,
	"CPS": []
}
var datos_2 = {
	"M_Clicks": 0,
	"M_Seg": 0,
	"CPS": []
}
var datos_3 = {
	"M_Clicks": 0,
	"M_Seg": 0,
	"CPS": []
}
var datos_4 = {
	"M_Clicks": 0,
	"M_Seg": 0,
	"CPS": []
}

var _M_Clicks_plantilla = 0
var range1 = 0
var _verificador = 0

var _M_Clicks_plantilla2 = 0
var range2 = 0
var _verificador2 = 0

var _M_Clicks_plantilla3 = 0
var range3 = 0
var _verificador3 = 0

var _M_Clicks_plantilla4 = 0
var range4 = 0
var _verificador4 = 0

var _primer_segundo = true

##--------------------------LOGICA DEL JUEGO-------------------------------------:
## LOGICA DE JUEGO INICIO Y AUN
#al iniciar se cargan los datos y se actualizan los datos del label
#AL INICIAR EL JUEGO LLAMA A LAS SIGUIENTES FUNC PARA ASI PODER CORRER,
# UBICARSE MEJOR Y ACTUALIZAR Y/O CARGAR DATOS,
func _ready() -> void:
	$"Node2D/Botones_ocultar desafio/opciones2/Go!".play("GO!")
	call_deferred("_carga_inicial")
	await get_tree().process_frame
	_paneles_para_centrar()
	_dibujar_grafica(_grafica_logica_matematica(XDIC["SOLO"]["datos_20"]))
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


# muestra objetos y textos importantes de desarrollo
# SE DEDICA A MOSTRAR TODAS LAS ESTADISTICAS IMPORTANTES ADEMAS DE COSAS INVISIBLES 
# AHORA SON VISIBLES PARA PODERLAS ANALIZAR
func _depurar():
	if depurar == true:
		p_node.visible = true
		A_texto.visible = true
	elif depurar == false:
		p_node.visible = false
		A_texto.visible = false


# logica de pasar las opciones
# A CADA RATO, SE ACTUALIZARA LOS LABELS DE LA ESCENA PARA MOSTRAS LOS DATOS
# ACTUALES, ADEMAS ESTE SERA EL ENCARGADO DE MOVER EL PANEL DE OPCIONES DE
# DERECHA A IZQUIERDA Y OCULTAR LOS BOTONES QUE PUEDAN INTERFERIR EN LA ANIMACION
func _process(_delta: float) -> void:
	_textos()
	_logica_de_desafios_modos_de_equipos_tipo_contador_barra()
	if opciones == 0 and v_home == 0:
		if n_todo.position.x < 720 and iniciar_lugar_opciones == 0:
			n_todo.position.x += +25
			b_opciones.visible = false
			b_opciones2.visible = false
		else:
			n_todo.position.x = 720
			if desafio:
				b_opciones.visible = true
				b_opciones2.visible = true
			else:
				b_opciones.visible = false
				b_opciones2.visible = false
			iniciar_lugar_opciones = 0
	elif opciones == 1 and v_home == 0:
		if n_todo.position.x <= 720 and n_todo.position.x > 1 and iniciar_lugar_opciones == 0:
			n_todo.position.x +=-25
			b_opciones.visible = false
			b_opciones2.visible = false
		else:
			n_todo.position.x = 0
			if desafio:
				b_opciones.visible = true
				b_opciones2.visible = true
			else:
				b_opciones.visible = false
				b_opciones2.visible = false
			iniciar_lugar_opciones = 0
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
	t_estadistica_local = $"Apartado de opciones abajo/estadistica/Control/ScrollContainer/VBoxContainer/ESTA LOCA"
	t_estadistica_global = $"Apartado de opciones abajo/estadistica/Control/ScrollContainer/VBoxContainer/ESTA GLOB"
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
	n_dekeiser_declaracion = $"Apartado de opciones abajo/Dekeiser_declaracion"
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
	A_label = $"Node2D/Botones_ocultar desafio/texto desaparecedor/TEXTO/Control/MarginContainer/Label"
	A_animation_valor_valido = $"Node2D/Botones_ocultar desafio/texto desaparecedor/TEXTO/Control/MarginContainer/Label/AnimationPlayer"
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
	SD_negro = $"Node2D/Botones_ocultar desafio/texto desaparecedor/TEXTO/Control/MarginContainer/Label/Label2"
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
	barra_vol_effect = $"Apartado de opciones abajo/opcion/Control/OPCIONES/AUDIO/AUDIO_PANEL/AUDIO_CONTENDER/effectos/HSlider"
	barra_vol_music = $"Apartado de opciones abajo/opcion/Control/OPCIONES/AUDIO/AUDIO_PANEL/AUDIO_CONTENDER/musica/HSlider"
	#el boton de home de la barra abajo
	hme1 = $"barraabajo/1home"
	#fondo
	F_rojo_2c2 = $Node2D/rojo
	F_verde_2c2 = $Node2D/verde
	#PANELES
	P_efectos = $"Apartado de opciones abajo/opcion/Control/OPCIONES/EFECTOS/PanelContainer"
	P_idioma = $"Apartado de opciones abajo/opcion/Control/OPCIONES/IDIOMA_CONTROL/PANEL_IDIOMA"
	#checkbutton
	CB_confeti = $"Apartado de opciones abajo/opcion/Control/OPCIONES/EFECTOS/PanelContainer/MarginContainer/EFECTOS/PanelContainer2/MarginContainer/Confeti"
	CB_vibracion = $"Apartado de opciones abajo/opcion/Control/OPCIONES/EFECTOS/PanelContainer/MarginContainer/EFECTOS/PanelContainer/MarginContainer/Vibracion"
	CB_plus1 = $"Apartado de opciones abajo/opcion/Control/OPCIONES/EFECTOS/PanelContainer/MarginContainer/EFECTOS/PanelContainer3/MarginContainer/+1"

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
		segundos += 1
		guardar_datos_para_grafica(0)


func guardar_datos_para_grafica(_a):
	var _num = ""
	var _nom = ""
	match max_segundos:
		1:
			_num = "datos_1"
		10:
			_num = "datos_10"
		20:
			_num = "datos_20"
		30:
			_num = "datos_30"
		60:
			_num = "datos_60"
		_:
			_num = "datos_x"
	match tipo_de_modo_jugadores:
		0:
			_nom = "SOLO"
		1:
			_nom = "1C1"
		2:
			_nom = "2C2"
		3:
			_nom = "3P"
		4:
			_nom = "4P"
	if _a == 0:
		if tipo_de_modo_jugadores == 0:
			if _primer_segundo:
				range1 = counter
				datos_1["CPS"].append(counter)
				_M_Clicks_plantilla = _verificador
				_primer_segundo = false
			else:
				_verificador = counter - range1
				range1 = counter
				datos_1["CPS"].append(_verificador)
				if _verificador > _M_Clicks_plantilla:
					_M_Clicks_plantilla = _verificador
		elif tipo_de_modo_jugadores >= 1 and tipo_de_modo_jugadores <= 2:
			if _primer_segundo:
				range1 = counter
				datos_1["CPS"].append(counter)
				_M_Clicks_plantilla = _verificador

				range2 = counter_J2
				datos_2["CPS"].append(counter_J2)
				_M_Clicks_plantilla2 = _verificador2
				_primer_segundo = false
			else:
				_verificador = counter - range1
				range1 = counter
				datos_1["CPS"].append(_verificador)
				if _verificador > _M_Clicks_plantilla:
					_M_Clicks_plantilla = _verificador

				_verificador2 = counter_J2 - range2
				range2 = counter_J2
				datos_2["CPS"].append(_verificador2)
				if _verificador2 > _M_Clicks_plantilla2:
					_M_Clicks_plantilla2 = _verificador2
		elif tipo_de_modo_jugadores == 3:
			if _primer_segundo:
				range1 = counter
				datos_1["CPS"].append(counter)
				_M_Clicks_plantilla = _verificador

				range2 = counter_J2
				datos_2["CPS"].append(counter_J2)
				_M_Clicks_plantilla2 = _verificador2

				range3 = counter_J3
				datos_3["CPS"].append(counter_J3)
				_M_Clicks_plantilla3 = _verificador3
				_primer_segundo = false
			else:
				_verificador = counter - range1
				range1 = counter
				datos_1["CPS"].append(_verificador)
				if _verificador > _M_Clicks_plantilla:
					_M_Clicks_plantilla = _verificador

				_verificador2 = counter_J2 - range2
				range2 = counter_J2
				datos_2["CPS"].append(_verificador2)
				if _verificador2 > _M_Clicks_plantilla2:
					_M_Clicks_plantilla2 = _verificador2

				_verificador3 = counter_J3 - range3
				range3 = counter_J3
				datos_3["CPS"].append(_verificador3)
				if _verificador3 > _M_Clicks_plantilla3:
					_M_Clicks_plantilla3 = _verificador3
		else:
			if _primer_segundo:
				range1 = counter
				datos_1["CPS"].append(counter)
				_M_Clicks_plantilla = _verificador

				range2 = counter_J2
				datos_2["CPS"].append(counter_J2)
				_M_Clicks_plantilla2 = _verificador2

				range3 = counter_J3
				datos_3["CPS"].append(counter_J3)
				_M_Clicks_plantilla3 = _verificador3

				range4 = counter_J4
				datos_4["CPS"].append(counter_J4)
				_M_Clicks_plantilla4 = _verificador4
				_primer_segundo = false
			else:
				_verificador = counter - range1
				range1 = counter
				datos_1["CPS"].append(_verificador)
				if _verificador > _M_Clicks_plantilla:
					_M_Clicks_plantilla = _verificador

				_verificador2 = counter_J2 - range2
				range2 = counter_J2
				datos_2["CPS"].append(_verificador2)
				if _verificador2 > _M_Clicks_plantilla2:
					_M_Clicks_plantilla2 = _verificador2

				_verificador3 = counter_J3 - range3
				range3 = counter_J3
				datos_3["CPS"].append(_verificador3)
				if _verificador3 > _M_Clicks_plantilla3:
					_M_Clicks_plantilla3 = _verificador3

				_verificador4 = counter_J4 - range4
				range4 = counter_J4
				datos_4["CPS"].append(_verificador4)
				if _verificador4 > _M_Clicks_plantilla4:
					_M_Clicks_plantilla4 = _verificador4
	elif _a == 1:
		if tipo_de_modo_jugadores == 0:
			datos_1["M_Clicks"] = _M_Clicks_plantilla
			datos_1["M_Seg"] = datos_1["CPS"].size()
			XDIC[_nom][_num] = datos_1
		elif tipo_de_modo_jugadores >= 1 and tipo_de_modo_jugadores <= 2:
			datos_1["M_Clicks"] = _M_Clicks_plantilla
			datos_1["M_Seg"] = datos_1["CPS"].size()
			XDIC[_nom][_num] = datos_1

			datos_2["M_Clicks"] = _M_Clicks_plantilla2
			datos_2["M_Seg"] = datos_2["CPS"].size()
			XDIC[_nom][_num + "J2"] = datos_2
		elif tipo_de_modo_jugadores == 3:
			datos_1["M_Clicks"] = _M_Clicks_plantilla
			datos_1["M_Seg"] = datos_1["CPS"].size()
			XDIC[_nom][_num] = datos_1

			datos_2["M_Clicks"] = _M_Clicks_plantilla2
			datos_2["M_Seg"] = datos_2["CPS"].size()
			XDIC[_nom][_num + "J2"] = datos_2

			datos_3["M_Clicks"] = _M_Clicks_plantilla3
			datos_3["M_Seg"] = datos_3["CPS"].size()
			XDIC[_nom][_num + "J3"] = datos_3
		else:
			datos_1["M_Clicks"] = _M_Clicks_plantilla
			datos_1["M_Seg"] = datos_1["CPS"].size()
			XDIC[_nom][_num] = datos_1

			datos_2["M_Clicks"] = _M_Clicks_plantilla2
			datos_2["M_Seg"] = datos_2["CPS"].size()
			XDIC[_nom][_num + "J2"] = datos_2

			datos_3["M_Clicks"] = _M_Clicks_plantilla3
			datos_3["M_Seg"] = datos_3["CPS"].size()
			XDIC[_nom][_num + "J3"] = datos_3

			datos_4["M_Clicks"] = _M_Clicks_plantilla4
			datos_4["M_Seg"] = datos_4["CPS"].size()
			XDIC[_nom][_num + "J4"] = datos_4
	else:
		_primer_segundo = true
		datos_1 = {
			"M_Clicks": 0,
			"M_Seg": 0,
			"CPS": []
		}
		_M_Clicks_plantilla = 0
		range1 = 0
		_verificador = 0
		datos_2 = {
			"M_Clicks": 0,
			"M_Seg": 0,
			"CPS": []
		}
		_M_Clicks_plantilla2 = 0
		range2 = 0
		_verificador2 = 0
		datos_3 = {
			"M_Clicks": 0,
			"M_Seg": 0,
			"CPS": []
		}
		_M_Clicks_plantilla3 = 0
		range3 = 0
		_verificador3 = 0
		datos_4 = {
			"M_Clicks": 0,
			"M_Seg": 0,
			"CPS": []
		}
		_M_Clicks_plantilla4 = 0
		range4 = 0
		_verificador4 = 0


#CONFIGURACION PARA SALIR DE UN DESAFIO
func _finalizar_desafio():
	segundos = 0
	guardar_datos_para_grafica(1)
	guardar()
	guardar_datos_para_grafica(2)
	counter = 0
	counter_J2 = 0
	counter_J3 = 0
	counter_J4 = 0
	desafio = false
	_no_quiero_escrbir_esta_linea_de_desactivacion_siempre(-1,0,0,0,0)
	segundos = 0
	_opciones_no_desafiadas_aparecen_o_no()
	t_tiempo.wait_time = 0.006
	fondo_1c1_2c2_aparecer(false)
	iniciar_desafio = 0
	opciones = 0

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
		if tipo_de_modo_jugadores >= 1 and tipo_de_modo_jugadores < 3:
			fondo_1c1_2c2_aparecer(true)
		else:
			fondo_1c1_2c2_aparecer(false)
		return


#superar record en los desafios
#AQUI SE ESPECIFICA QUE PASARIA SI EN UN DESAFIO SE ROMPE EL MEJOR CPS 
#(CLICKS POR SEGUNDO (DE ESE DESAFIO Y DE ESE JUGADOR)) CON RESPECTO AL CPS ACTUAL
func logica_desafio():
	cps_actual = float(counter) / max_segundos
	cps_actual_J2 = float(counter_J2) / max_segundos
	cps_actual_J3 = float(counter_J3) / max_segundos
	cps_actual_J4 = float(counter_J4) / max_segundos

	if max_segundos == 1:
		_auto("_1")
	elif max_segundos == 10:
		_auto("_10")
	elif max_segundos == 20:
		_auto("_20")
	elif max_segundos == 30:
		_auto("_30")
	elif max_segundos == 60:
		_auto("_60")
	elif max_segundos == Segundos_personalizados and Segundos_personalizados > 0:
		_auto("_Personalizado")


func _auto(_c):
	var _a = "Mejor"
	var _b = ""
	var _d = "_cliks"
	var _e = "_cps"

	var _tipo = tipo_de_modo_jugadores
	var _max_jugadores = 0

	match _tipo:
		0: # SOLO
			_max_jugadores = 0
		1: # 1C1
			_max_jugadores = 1
		2: # 2C2
			_max_jugadores = 1
		3: # 3P
			_max_jugadores = 2
		4: # 4P
			_max_jugadores = 3

	for _y in _max_jugadores + 1:
		match _y:
			0:
				_b = ""
			1:
				_b = "_J2"
			2:
				_b = "_J3"
			3:
				_b = "_J4"

		_ald(
			_tipo,
			_y,
			_a + _e + _c + _b,
			_a + _d + _c + _b
		)


func _ald(_tipo, _a, _b, _d):
	_automatizacion_logica_desafio(_tipo, _a, _b, _d)


func _automatizacion_logica_desafio(_tipo, _a, _b, _d):
	var _g = ""
	var _c = 0

	match _tipo:
		0:
			_g = "SOLO"
		1:
			_g = "1C1"
		2:
			_g = "2C2"
		3:
			_g = "3P"
		4:
			_g = "4P"

	match _a:
		0:
			_c = cps_actual
		1:
			_c = cps_actual_J2
		2:
			_c = cps_actual_J3
		3:
			_c = cps_actual_J4

	if _c > XDIC[_g][_b]:
		XDIC[_g][_b] = _c

		_cuando_el_mejor_cps_es_mayor(_c)


func _cuando_el_mejor_cps_es_mayor(_a):
	if _a != 0 and XDIC["confeti"] == 1:
		confeti_señal.confeti.emit()


#TODO LA LOGICA PRINCIPAL DE ESTADISTICAS
#logita para saber q hacen los botones de estadisticas de las opciones.
func _para_estadisticas_opciones(_a,_b,_c = 0):
	a_click.play()
	if _b == 1:
		_botones_abajo(1)
	else:
		_textos_explicativos(_c.position.x-120,_c.position.y-20,SD_ACTIVADO)
	v_dessfios_o_total = _a
	_que_estadistica_mostrar()

#logica de que hara segun los datos de estadisticas
func _que_estadistica_mostrar():
	match v_dessfios_o_total:
		0:
			t_estadistica_local.visible = false
			t_estadistica_global.visible = true
			t_estadistica_global.text = SD_estadisticas

		1:
			v_que_modo_de_juego_ver_opciones = 2
			_asignadores(1, be_1c1)

		2:
			v_que_modo_de_juego_ver_opciones = 4
			_asignadores(1, be_2c2)

		3:
			v_que_modo_de_juego_ver_opciones = 1
			_asignadores(1, be_solo)

		4:
			v_que_modo_de_juego_ver_opciones = 3
			_asignadores(1, be_tct3)

		5:
			v_que_modo_de_juego_ver_opciones = 4
			_asignadores(1, be_tct4)

		6:
			_que_muestran_las_estadisticas(
				XDIC["Mejor_cliks_10"],
				XDIC["Mejor_cps_10"],
				10,
				XDIC["Mejor_cliks_10_J2"],
				XDIC["Mejor_cps_10_J2"],
				XDIC["Mejor_cliks_10_J3"],
				XDIC["Mejor_cps_10_J3"],
				XDIC["Mejor_cliks_10_J4"],
				XDIC["Mejor_cps_10_J4"]
			)

		7:
			_que_muestran_las_estadisticas(
				XDIC["Mejor_cliks_30"],
				XDIC["Mejor_cps_30"],
				30,
				XDIC["Mejor_cliks_30_J2"],
				XDIC["Mejor_cps_30_J2"],
				XDIC["Mejor_cliks_30_J3"],
				XDIC["Mejor_cps_30_J3"],
				XDIC["Mejor_cliks_30_J4"],
				XDIC["Mejor_cps_30_J4"]
			)

		8:
			_que_muestran_las_estadisticas(
				XDIC["Mejor_cliks_1"],
				XDIC["Mejor_cps_1"],
				1,
				XDIC["Mejor_cliks_1_J2"],
				XDIC["Mejor_cps_1_J2"],
				XDIC["Mejor_cliks_1_J3"],
				XDIC["Mejor_cps_1_J3"],
				XDIC["Mejor_cliks_1_J4"],
				XDIC["Mejor_cps_1_J4"]
			)

		9:
			_que_muestran_las_estadisticas(
				XDIC["Mejor_cliks_20"],
				XDIC["Mejor_cps_20"],
				20,
				XDIC["Mejor_cliks_20_J2"],
				XDIC["Mejor_cps_20_J2"],
				XDIC["Mejor_cliks_20_J3"],
				XDIC["Mejor_cps_20_J3"],
				XDIC["Mejor_cliks_20_J4"],
				XDIC["Mejor_cps_20_J4"]
			)

		10:
			_que_muestran_las_estadisticas(
				XDIC["Mejor_cliks_60"],
				XDIC["Mejor_cps_60"],
				60,
				XDIC["Mejor_cliks_60_J2"],
				XDIC["Mejor_cps_60_J2"],
				XDIC["Mejor_cliks_60_J3"],
				XDIC["Mejor_cps_60_J3"],
				XDIC["Mejor_cliks_60_J4"],
				XDIC["Mejor_cps_60_J4"]
			)

		11:
			_que_muestran_las_estadisticas(
				XDIC["Mejor_cliks_Personalizado"],
				XDIC["Mejor_cps_Personalizado"],
				"X",
				XDIC["Mejor_cliks_Personalizado_J2"],
				XDIC["Mejor_cps_Personalizado_J2"],
				XDIC["Mejor_cliks_Personalizado_J3"],
				XDIC["Mejor_cps_Personalizado_J3"],
				XDIC["Mejor_cliks_Personalizado_J4"],
				XDIC["Mejor_cps_Personalizado_J4"]
			)

#visor estadisticas locales
func _que_muestran_las_estadisticas(_a,_b,_c,_a2,_b2,_a3,_b3,_a4,_b4):
	_estadisticas_mostrar_texto_parasiempre()
	hme1.texture_normal = th_texture2
	SD_estadisticas = SD_esta
	t_estadistica_local.visible = true
	t_estadistica_global.visible = false

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


# visor estadisticas globales
func _estadisticas_mostrar_texto_parasiempre():
	SD_esta = (
	_string_estadistica(0,47) + # SOLITARIO
	_string_estadistica(0,18) +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"1","SOLO","Mejor_cliks_1") +
	_string_estadistica(2,0,1,"1","SOLO","Mejor_cps_1") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"10","SOLO","Mejor_cliks_10") +
	_string_estadistica(2,0,1,"10","SOLO","Mejor_cps_10") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"20","SOLO","Mejor_cliks_20") +
	_string_estadistica(2,0,1,"20","SOLO","Mejor_cps_20") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"30","SOLO","Mejor_cliks_30") +
	_string_estadistica(2,0,1,"30","SOLO","Mejor_cps_30") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"60","SOLO","Mejor_cliks_60") +
	_string_estadistica(2,0,1,"60","SOLO","Mejor_cps_60") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,t(str(ram_dic[23])),"SOLO","Mejor_cliks_Personalizado","","SEG") +
	_string_estadistica(2,0,1,t(str(ram_dic[23])),"SOLO","Mejor_cps_Personalizado","","SEG") +

	_string_estadistica(3) +
	_string_estadistica(0,44) + # 1C1
	_string_estadistica(0,48,0,0,0,0,"1") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"1","1C1","Mejor_cliks_1") +
	_string_estadistica(2,0,1,"1","1C1","Mejor_cps_1") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"10","1C1","Mejor_cliks_10") +
	_string_estadistica(2,0,1,"10","1C1","Mejor_cps_10") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"20","1C1","Mejor_cliks_20") +
	_string_estadistica(2,0,1,"20","1C1","Mejor_cps_20") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"30","1C1","Mejor_cliks_30") +
	_string_estadistica(2,0,1,"30","1C1","Mejor_cps_30") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"60","1C1","Mejor_cliks_60") +
	_string_estadistica(2,0,1,"60","1C1","Mejor_cps_60") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,t(str(ram_dic[23])),"1C1","Mejor_cliks_Personalizado","","SEG") +
	_string_estadistica(2,0,1,t(str(ram_dic[23])),"1C1","Mejor_cps_Personalizado","","SEG") +
	_string_estadistica(0,48,0,0,0,0,"2") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"1","1C1","Mejor_cliks_1_J2") +
	_string_estadistica(2,0,1,"1","1C1","Mejor_cps_1_J2") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"10","1C1","Mejor_cliks_10_J2") +
	_string_estadistica(2,0,1,"10","1C1","Mejor_cps_10_J2") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"20","1C1","Mejor_cliks_20_J2") +
	_string_estadistica(2,0,1,"20","1C1","Mejor_cps_20_J2") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"30","1C1","Mejor_cliks_30_J2") +
	_string_estadistica(2,0,1,"30","1C1","Mejor_cps_30_J2") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"60","1C1","Mejor_cliks_60_J2") +
	_string_estadistica(2,0,1,"60","1C1","Mejor_cps_60_J2") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,t(str(ram_dic[23])),"1C1","Mejor_cliks_Personalizado_J2","","SEG2") +
	_string_estadistica(2,0,1,t(str(ram_dic[23])),"1C1","Mejor_cps_Personalizado_J2","","SEG2") +

	_string_estadistica(3) +
	_string_estadistica(0,45) + # 2C2
	_string_estadistica(0,48,0,0,0,0,"1") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"1","2C2","Mejor_cliks_1") +
	_string_estadistica(2,0,1,"1","2C2","Mejor_cps_1") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"10","2C2","Mejor_cliks_10") +
	_string_estadistica(2,0,1,"10","2C2","Mejor_cps_10") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"20","2C2","Mejor_cliks_20") +
	_string_estadistica(2,0,1,"20","2C2","Mejor_cps_20") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"30","2C2","Mejor_cliks_30") +
	_string_estadistica(2,0,1,"30","2C2","Mejor_cps_30") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"60","2C2","Mejor_cliks_60") +
	_string_estadistica(2,0,1,"60","2C2","Mejor_cps_60") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,t(str(ram_dic[23])),"2C2","Mejor_cliks_Personalizado","","SEG") +
	_string_estadistica(2,0,1,t(str(ram_dic[23])),"2C2","Mejor_cps_Personalizado","","SEG") +
	_string_estadistica(0,48,0,0,0,0,"2") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"1","2C2","Mejor_cliks_1_J2") +
	_string_estadistica(2,0,1,"1","2C2","Mejor_cps_1_J2") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"10","2C2","Mejor_cliks_10_J2") +
	_string_estadistica(2,0,1,"10","2C2","Mejor_cps_10_J2") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"20","2C2","Mejor_cliks_20_J2") +
	_string_estadistica(2,0,1,"20","2C2","Mejor_cps_20_J2") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"30","2C2","Mejor_cliks_30_J2") +
	_string_estadistica(2,0,1,"30","2C2","Mejor_cps_30_J2") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"60","2C2","Mejor_cliks_60_J2") +
	_string_estadistica(2,0,1,"60","2C2","Mejor_cps_60_J2") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,t(str(ram_dic[23])),"2C2","Mejor_cliks_Personalizado_J2","","SEG2") +
	_string_estadistica(2,0,1,t(str(ram_dic[23])),"2C2","Mejor_cps_Personalizado_J2","","SEG2") +


	_string_estadistica(3) +
	_string_estadistica(0,46,0,0,0,0,"(3)") + # PLAYERS (3) 
	_string_estadistica(0,18) + 
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"1","3P","Mejor_cliks_1") +
	_string_estadistica(2,0,1,"1","3P","Mejor_cps_1") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"10","3P","Mejor_cliks_10") +
	_string_estadistica(2,0,1,"10","3P","Mejor_cps_10") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"20","3P","Mejor_cliks_20") +
	_string_estadistica(2,0,1,"20","3P","Mejor_cps_20") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"30","3P","Mejor_cliks_30") +
	_string_estadistica(2,0,1,"30","3P","Mejor_cps_30") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"60","3P","Mejor_cliks_60") +
	_string_estadistica(2,0,1,"60","3P","Mejor_cps_60") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,t(str(ram_dic[23])),"3P","Mejor_cliks_Personalizado","","SEG") +
	_string_estadistica(2,0,1,t(str(ram_dic[23])),"3P","Mejor_cps_Personalizado","","SEG") +
	_string_estadistica(0,19) + 
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"1","3P","Mejor_cliks_1_J2") +
	_string_estadistica(2,0,1,"1","3P","Mejor_cps_1_J2") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"10","3P","Mejor_cliks_10_J2") +
	_string_estadistica(2,0,1,"10","3P","Mejor_cps_10_J2") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"20","3P","Mejor_cliks_20_J2") +
	_string_estadistica(2,0,1,"20","3P","Mejor_cps_20_J2") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"30","3P","Mejor_cliks_30_J2") +
	_string_estadistica(2,0,1,"30","3P","Mejor_cps_30_J2") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"60","3P","Mejor_cliks_60_J2") +
	_string_estadistica(2,0,1,"60","3P","Mejor_cps_60_J2") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,t(str(ram_dic[23])),"3P","Mejor_cliks_Personalizado_J2","","SEG2") +
	_string_estadistica(2,0,1,t(str(ram_dic[23])),"3P","Mejor_cps_Personalizado_J2","","SEG2") +
	_string_estadistica(0,20) +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"1","3P","Mejor_cliks_1_J3") +
	_string_estadistica(2,0,1,"1","3P","Mejor_cps_1_J3") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"10","3P","Mejor_cliks_10_J3") +
	_string_estadistica(2,0,1,"10","3P","Mejor_cps_10_J3") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"20","3P","Mejor_cliks_20_J3") +
	_string_estadistica(2,0,1,"20","3P","Mejor_cps_20_J3") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"30","3P","Mejor_cliks_30_J3") +
	_string_estadistica(2,0,1,"30","3P","Mejor_cps_30_J3") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"60","3P","Mejor_cliks_60_J3") +
	_string_estadistica(2,0,1,"60","3P","Mejor_cps_60_J3") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,t(str(ram_dic[23])),"3P","Mejor_cliks_Personalizado_J3","","SEG3") +
	_string_estadistica(2,0,1,t(str(ram_dic[23])),"3P","Mejor_cps_Personalizado_J3","","SEG3") +

	_string_estadistica(3) +
	_string_estadistica(0,46,0,0,0,0,"(4)") + # PLAYERS (4) 
	_string_estadistica(0,18) + 
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"1","4P","Mejor_cliks_1") +
	_string_estadistica(2,0,1,"1","4P","Mejor_cps_1") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"10","4P","Mejor_cliks_10") +
	_string_estadistica(2,0,1,"10","4P","Mejor_cps_10") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"20","4P","Mejor_cliks_20") +
	_string_estadistica(2,0,1,"20","4P","Mejor_cps_20") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"30","4P","Mejor_cliks_30") +
	_string_estadistica(2,0,1,"30","4P","Mejor_cps_30") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"60","4P","Mejor_cliks_60") +
	_string_estadistica(2,0,1,"60","4P","Mejor_cps_60") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,t(str(ram_dic[23])),"4P","Mejor_cliks_Personalizado","","SEG") +
	_string_estadistica(2,0,1,t(str(ram_dic[23])),"4P","Mejor_cps_Personalizado","","SEG") +
	_string_estadistica(0,19) + 
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"1","4P","Mejor_cliks_1_J2") +
	_string_estadistica(2,0,1,"1","4P","Mejor_cps_1_J2") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"10","4P","Mejor_cliks_10_J2") +
	_string_estadistica(2,0,1,"10","4P","Mejor_cps_10_J2") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"20","4P","Mejor_cliks_20_J2") +
	_string_estadistica(2,0,1,"20","4P","Mejor_cps_20_J2") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"30","4P","Mejor_cliks_30_J2") +
	_string_estadistica(2,0,1,"30","4P","Mejor_cps_30_J2") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"60","4P","Mejor_cliks_60_J2") +
	_string_estadistica(2,0,1,"60","4P","Mejor_cps_60_J2") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,t(str(ram_dic[23])),"4P","Mejor_cliks_Personalizado_J2","","SEG2") +
	_string_estadistica(2,0,1,t(str(ram_dic[23])),"4P","Mejor_cps_Personalizado_J2","","SEG2") +
	_string_estadistica(0,20) +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"1","4P","Mejor_cliks_1_J3") +
	_string_estadistica(2,0,1,"1","4P","Mejor_cps_1_J3") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"10","4P","Mejor_cliks_10_J3") +
	_string_estadistica(2,0,1,"10","4P","Mejor_cps_10_J3") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"20","4P","Mejor_cliks_20_J3") +
	_string_estadistica(2,0,1,"20","4P","Mejor_cps_20_J3") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"30","4P","Mejor_cliks_30_J3") +
	_string_estadistica(2,0,1,"30","4P","Mejor_cps_30_J3") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"60","4P","Mejor_cliks_60_J3") +
	_string_estadistica(2,0,1,"60","4P","Mejor_cps_60_J3") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,t(str(ram_dic[23])),"4P","Mejor_cliks_Personalizado_J3","","SEG3") +
	_string_estadistica(2,0,1,t(str(ram_dic[23])),"4P","Mejor_cps_Personalizado_J3","","SEG3") +
	_string_estadistica(0,21) +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"1","4P","Mejor_cliks_1_J4") +
	_string_estadistica(2,0,1,"1","4P","Mejor_cps_1_J4") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"10","4P","Mejor_cliks_10_J4") +
	_string_estadistica(2,0,1,"10","4P","Mejor_cps_10_J4") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"20","4P","Mejor_cliks_20_J4") +
	_string_estadistica(2,0,1,"20","4P","Mejor_cps_20_J4") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"30","4P","Mejor_cliks_30_J4") +
	_string_estadistica(2,0,1,"30","4P","Mejor_cps_30_J4") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,"60","4P","Mejor_cliks_60_J4") +
	_string_estadistica(2,0,1,"60","4P","Mejor_cps_60_J4") +
	_string_estadistica(1) +
	_string_estadistica(2,0,0,t(str(ram_dic[23])),"4P","Mejor_cliks_Personalizado_J4","","SEG4") +
	_string_estadistica(2,0,1,t(str(ram_dic[23])),"4P","Mejor_cps_Personalizado_J4","","SEG4") +
	_string_estadistica(3) +
	_string_estadistica(4)
	)

func _string_estadistica(
_tipo, # tipo de texto string
_jugador = 0, # numero de ram_dic[] de jugador
_dato1 = 0, # Click o CPS (0 1)
_SEG = "", # Numero de segundos
_dato2 = "", # donde se saca el resultado (XDIC) (nombre del dic)
_dato3 = "", # donde se saca el resultado (XDIC) (nombre del key dentro del dic)
_NUM = "",
_seg_personalizados = ""
):
	var _text = ""
	match _tipo:
		0:
			_text = "\n[bgcolor=#4B3F72][color=#FFFFFF] " + t(str(ram_dic[_jugador])) + "" + _NUM + ":" + "[/color][/bgcolor]"
		1:
			_text = "\n[color=#777777]──────────────[/color]"
		2:
			match _dato1:
				0:
					if _seg_personalizados == "":
						_text = ("\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + 
						t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](" + _SEG + " "+ t(str(ram_dic[31])) +
						 "):[/color] [color=#FFD700]" + str(XDIC[_dato2][_dato3]) + "[/color]"
						)
					else:
						_text = ("\n" + t(str(ram_dic[25])) + " [color=#FFA500]" + 
						t(str(ram_dic[26])) + "[/color] [color=#D8B4FE](" + _SEG + " [ " + str(XDIC[_dato2][_seg_personalizados]) + " ] " + t(str(ram_dic[31])) +
						 "):[/color] [color=#FFD700]" + str(XDIC[_dato2][_dato3]) + "[/color]"
						)
				1:
					if _seg_personalizados == "":
						_text = ("\n" + t(str(ram_dic[25])) + " [color=#cf003a]" +
						 t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](" + _SEG + " " + t(str(ram_dic[31])) +
						 "):[/color] [color=#FFD700]" + str(XDIC[_dato2][_dato3]) + "[/color]"
						)
					else:
						_text = ("\n" + t(str(ram_dic[25])) + " [color=#cf003a]" +
						 t(str(ram_dic[27])) + "[/color] [color=#D8B4FE](" + _SEG + " [ " + str(XDIC[_dato2][_seg_personalizados]) + " ] " + t(str(ram_dic[31])) +
						 "):[/color] [color=#FFD700]" + str(XDIC[_dato2][_dato3]) + "[/color]"
						)
		3:
			_text = "\n[color=#4B3F72]══════════════[/color]\n\n"
		4:
			_text = "\n\n\n\n\n\n\n\n"
		5:
			_text = "\n\n[bgcolor=#4B3F72][color=#FFFFFF] " + t(str(ram_dic[_jugador])) + "" + _NUM + ":" + "[/color][/bgcolor]"
	return _text


##--------------------------LOGICA BOTONES---------------------------------------:
## BOTONES JUGADORES:
#LOS SIGUIENTES BOTONES SON JUGADORES, ASI QUE CADA UNO HACE LO MISMO QUE EL 
#ORIGINAL TECNICAMENTE.
#logica de precionar el boton 1
func _on_boton_pressed() -> void:
	_texto_presionar_plus_one(b_contador)
	_automaticazion_logica_botones_jugadores(
		1,
		counter,
		tipo_de_modo_jugadores,
		"Mejor_cliks_1",
		"Mejor_cliks_10",
		"Mejor_cliks_20",
		"Mejor_cliks_30",
		"Mejor_cliks_60",
		"Mejor_cliks_Personalizado"
	)

func _automaticazion_logica_botones_jugadores(_nu,_counter,_tipo,_a,_b,_c,_d,_e,_f):
	var _g = ""
	match _tipo:
		0:
			_g = "SOLO"
		1:
			_g = "1C1"
		2:
			_g = "2C2"
		3:
			_g = "3P"
		4:
			_g = "4P"
		_:
			_g = "SOLO"
	_logica_botones_jugadores(
	_nu,
	_counter,
	XDIC[_g][_a],
	XDIC[_g][_b],
	XDIC[_g][_c],
	XDIC[_g][_d],
	XDIC[_g][_e],
	XDIC[_g][_f],
	_tipo,
	_a,_b,_c,_d,_e,_f
	)

# logica de presionar el boton 2
func _on_boton_2_pressed() -> void:
	_texto_presionar_plus_one(b_contador2)
	_automaticazion_logica_botones_jugadores(
		2,
		counter_J2,
		tipo_de_modo_jugadores,
		"Mejor_cliks_1_J2",
		"Mejor_cliks_10_J2",
		"Mejor_cliks_20_J2",
		"Mejor_cliks_30_J2",
		"Mejor_cliks_60_J2",
		"Mejor_cliks_Personalizado_J2"
	)


# logica de presionar el boton 3
func _on_boton_3_pressed() -> void:
	_texto_presionar_plus_one(b_contador3)
	if tipo_de_modo_jugadores == 2:
		_automaticazion_logica_botones_jugadores(
		1,
		counter,
		tipo_de_modo_jugadores,
		"Mejor_cliks_1",
		"Mejor_cliks_10",
		"Mejor_cliks_20",
		"Mejor_cliks_30",
		"Mejor_cliks_60",
		"Mejor_cliks_Personalizado"
	)
	else:
		_automaticazion_logica_botones_jugadores(
		3,
		counter_J3,
		tipo_de_modo_jugadores,
		"Mejor_cliks_1_J3",
		"Mejor_cliks_10_J3",
		"Mejor_cliks_20_J3",
		"Mejor_cliks_30_J3",
		"Mejor_cliks_60_J3",
		"Mejor_cliks_Personalizado_J3"
	)


# logica de presionar el boton 4
func _on_boton_4_pressed() -> void:
	_texto_presionar_plus_one(b_contador4)
	if tipo_de_modo_jugadores == 2:
		_automaticazion_logica_botones_jugadores(
		2,
		counter_J2,
		tipo_de_modo_jugadores,
		"Mejor_cliks_1_J2",
		"Mejor_cliks_10_J2",
		"Mejor_cliks_20_J2",
		"Mejor_cliks_30_J2",
		"Mejor_cliks_60_J2",
		"Mejor_cliks_Personalizado_J2"
	)
	else:
		_automaticazion_logica_botones_jugadores(
		4,
		counter_J4,
		tipo_de_modo_jugadores,
		"Mejor_cliks_1_J4",
		"Mejor_cliks_10_J4",
		"Mejor_cliks_20_J4",
		"Mejor_cliks_30_J4",
		"Mejor_cliks_60_J4",
		"Mejor_cliks_Personalizado_J4"
	)


## BOTONES REINICIO:
#reiniciar solo el contador
func _on_reset_counter_pressed() -> void:
	if XDIC["vibracion"] == 1:
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
	if XDIC["vibracion"] == 1:
		Input.vibrate_handheld(40)
	a_click.play()
	counter_J2 = 0
	counter = 0
	counter_J3 = 0
	counter_J4 = 0
	for e in 2:
		for i in 4:
			if tipo_de_modo_jugadores != 0 and i == 0:
				tipo_de_modo_jugadores = 0
			else:
				tipo_de_modo_jugadores += 1
			for a in 5:
				if max_segundos != 1 and a == 0:
					max_segundos = 1
				elif a >=1 and a <= 3:
					if a == 1:
						max_segundos = 10
					else:
						max_segundos += 10
				elif a == 4:
					max_segundos = 60
				else:
					max_segundos = 67
				_forzar_cero_datos()
	guardar()


## PANEL DE OPCIONES:
#ir a las opciones
func _on_opciones_pressed() -> void:
	if XDIC["vibracion"] == 1:
		Input.vibrate_handheld(40)
	a_click.play()
	opciones = 0
#irse de las opciones
func _on_opciones_2_pressed() -> void:
	if XDIC["vibracion"] == 1:
		Input.vibrate_handheld(40)
	a_click.play()
	if desafio == true:
		opciones = 1


## DESAFIOS:
#logica de activar desafio 1 s
func _on_desafio_1_pressed() -> void:
	_no_quiero_escrbir_esta_linea_de_desactivacion_siempre(1,1,
	AD_2,
	b_desafio_1,
	SD_Modo_1s)
#logica de activar desafio 10 s
func _on_desafio_10_pressed() -> void:
	_no_quiero_escrbir_esta_linea_de_desactivacion_siempre(2,10,
	AD_3,
	b_desafio_10,
	SD_Modo_10s)
#logica de activar desafio 20 s
func _on_desafio_20_pressed() -> void:
	_no_quiero_escrbir_esta_linea_de_desactivacion_siempre(3,20,
	AD_4,
	b_desafio_20,
	SD_Modo_20s)
#logica de activar desafio 30 s
func _on_desafio_30_pressed() -> void:
	_no_quiero_escrbir_esta_linea_de_desactivacion_siempre(4,30,
	AD_5,
	b_desafio_30,
	SD_Modo_30s)
#logica de activar desafio 60 s
func _on_desafio_60_pressed() -> void:
	_no_quiero_escrbir_esta_linea_de_desactivacion_siempre(5,60,
	AD_6,
	b_desafio_60,
	SD_Modo_60s)
#logica de activar desafio x (y limitandolo)
func _on_desafio_person_pressed() -> void:
	a_click.play()
	if int(t_entrado_personalizada.text) > 0 and int(t_entrado_personalizada.text) is int:
		if XDIC["vibracion"] == 1:
			Input.vibrate_handheld(40)
		var numero_line_edit = int(t_entrado_personalizada.text)
		if numero_line_edit > 99999999:
			t_entrado_personalizada.text = SD_limite_valor_Modo_Xs
			t_entrado_personalizada.caret_column = t_entrado_personalizada.text.length()
		Segundos_personalizados = int(t_entrado_personalizada.text)
		var SD_Modo_Xs2
		SD_Modo_Xs2 = (t(SD_Modo_Xs) + str(Segundos_personalizados) + t(SD_SEG))
		_no_quiero_escrbir_esta_linea_de_desactivacion_siempre(6,
		Segundos_personalizados,
		AD_1,
		b_desafio_personalizado,
		SD_Modo_Xs2
		)
	else:
		if XDIC["vibracion"] == 1:
			Input.vibrate_handheld(110)
		_textos_explicativos(AD_1.x,AD_1.y,SD_valor_valido)

#poner dato x en android (FORZADOR SI HAY ERROR)
func _on_touch_screen_button_pressed() -> void:
	if XDIC["vibracion"] == 1:
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
	if XDIC["vibracion"] == 1:
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

## BOTONES QUE SALEN AL INICIAR UN DESAFIO
func _on_salir_desafios_pressed() -> void:
	_forzar_cero_datos()
	segundos = 0
	_finalizar_desafio()

func _forzar_cero_datos():
	var _num = ""
	var _nom = ""
	var _cps = "Mejor_cps"
	var _click = "Mejor_cliks"
	var _numerito = ""
	var _ramdom = 0
	var _2 = "_J2"
	var _3 = "_J3"
	var _4 = "_J4"
	match max_segundos:
		1:
			_num = "datos_1"
			_numerito = "_1"
			_ramdom = 0
		10:
			_num = "datos_10"
			_numerito = "_10"
			_ramdom = 0
		20:
			_num = "datos_20"
			_numerito = "_20"
			_ramdom = 0
		30:
			_num = "datos_30"
			_numerito = "_30"
			_ramdom = 0
		60:
			_num = "datos_60"
			_numerito = "_60"
			_ramdom = 0
		_:
			_num = "datos_x"
			_numerito = "_Personalizado"
			_ramdom = 1
	match tipo_de_modo_jugadores:
		0:
			_nom = "SOLO"
			_automatizacion_forzar_cero(_nom,_click,_numerito,_cps,_num,_ramdom)
		1:
			_nom = "1C1"
			_automatizacion_forzar_cero(_nom,_click,_numerito,_cps,_num,_ramdom)
			_automatizacion_forzar_cero(_nom,_click,_numerito,_cps,_num,_ramdom,_2)
		2:
			_nom = "2C2"
			_automatizacion_forzar_cero(_nom,_click,_numerito,_cps,_num,_ramdom)
			_automatizacion_forzar_cero(_nom,_click,_numerito,_cps,_num,_ramdom,_2)
		3:
			_nom = "3P"
			_automatizacion_forzar_cero(_nom,_click,_numerito,_cps,_num,_ramdom)
			_automatizacion_forzar_cero(_nom,_click,_numerito,_cps,_num,_ramdom,_2)
			_automatizacion_forzar_cero(_nom,_click,_numerito,_cps,_num,_ramdom,_3)
		4:
			_nom = "4P"
			_automatizacion_forzar_cero(_nom,_click,_numerito,_cps,_num,_ramdom)
			_automatizacion_forzar_cero(_nom,_click,_numerito,_cps,_num,_ramdom,_2)
			_automatizacion_forzar_cero(_nom,_click,_numerito,_cps,_num,_ramdom,_3)
			_automatizacion_forzar_cero(_nom,_click,_numerito,_cps,_num,_ramdom,_4)

func _automatizacion_forzar_cero(_a,_b,_c,_d,_e,_f,_g = ""):
			XDIC[_a][_b + _c] = 0
			XDIC[_a][_d + _c] = 0
			XDIC[_a][_e] = {
				"CPS": [],
				"M_Clicks": 0,
				"M_Seg": 0}
			if _f == 1:
				XDIC[_a]["SEG" + _g] = 0

func _on_repetidor_desafios_indefinidos_pressed() -> void:
	a_click.play()
	if bucle_desafio == 0:
		rd_repetidor_desafios.texture_normal = rd_texture1
		bucle_desafio = 1
	else:
		bucle_desafio = 0
		rd_repetidor_desafios.texture_normal = rd_texture2


## MODOS DE JUEGO (UNO O MAS JUGADORES):
#logica de reposicionamiento(botones jugadores) de los modos de juego
#ESTE SE ESPECIALIZA EN DECIRLE A LOS BOTONES EN QUE UBICACION COLOCARSE
#SI DEBEN DE ESCALAR O DONDE POSICIONARSE O SIMPLEMENTE OCULTARSE
func _modo_jugadores():
	if XDIC["vibracion"] == 1:
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
		fondo_1c1_2c2_aparecer(false)
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
		fondo_1c1_2c2_aparecer(true)
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
		fondo_1c1_2c2_aparecer(true)
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
		fondo_1c1_2c2_aparecer(false)
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
		fondo_1c1_2c2_aparecer(false)
		return
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

func fondo_1c1_2c2_aparecer(_A):
	F_rojo_2c2.visible = _A
	F_verde_2c2.visible = _A

## BOTONES QUE SON DE ESTADISTICAS Y SU LOGICA
func _on_estadisticas_pressed() -> void: #1c1
	_para_estadisticas_opciones(1,0,$"Node2D/Botones_ocultar desafio/Estadisticas_activa_1c1")
func _on_estadisticas_2_pressed() -> void: #2c2
	_para_estadisticas_opciones(2,0,$"Node2D/Botones_ocultar desafio/Estadisticas_activa_2c2")
func _on_estadisticas_3_pressed() -> void: #solo
	_para_estadisticas_opciones(3,0,$"Node2D/Botones_ocultar desafio/Estadisticas_activa_solitario")
func _on_estadisticas_4_pressed() -> void: #3 jugadores
	_para_estadisticas_opciones(4,0,$"Node2D/Botones_ocultar desafio/Estadisticas_activa_tct3")
func _on_estadisticas_5_pressed() -> void: #4 jugadores
	_para_estadisticas_opciones(5,0,$"Node2D/Botones_ocultar desafio/Estadisticas_activa_tct4")
func _on_estadisticas_8_pressed() -> void: # 1 s
	_para_estadisticas_opciones(8,1)
func _on_estadisticas_6_pressed() -> void: # 10 s
	_para_estadisticas_opciones(6,1)
func _on_estadisticas_9_pressed() -> void: # 20 s
	_para_estadisticas_opciones(9,1)
func _on_estadisticas_7_pressed() -> void: # 30 s
	_para_estadisticas_opciones(7,1)
func _on_estadisticas_10_pressed() -> void: # 60 s
	_para_estadisticas_opciones(10,1)
func _on_estadisticas_11_pressed() -> void: # X s
	_para_estadisticas_opciones(11,1)


#Logica de que pasa si das un click a un boton jugable.
#ESTE SE ESPECIALIZA EN SUMAR UNA UNIDAD A EL VALOR TOTAL CLISKS, Y ESTE ES EL RESPONSABLE
#DE QUE LOS BOTONES AUMENTEN SU CONTADOR, ADEMAS SE ESPECIALIZA EN ACTUALIZAR SI HAY UN 
#NUEVO RECORD DE CLICKS, YA SEA NORMAL, DESAFIO O SEA OTRO JUGADOR(BOTON)
func _logica_botones_jugadores(_numero_player, _counter, _Mejor_cliks1, _Mejor_cliks10, _Mejor_cliks20, _Mejor_cliks30, _Mejor_cliks60, _Mejor_cliksx,_tipo,_a,_b,_c,_d,_e,_f):
	total_counter += 1
	XDIC["Total_Clicks"] = total_counter
	if XDIC["vibracion"] == 1:
		Input.vibrate_handheld(40)
	a_click.play()
	logros(_counter)

	if desafio == true: # si hay desafio
		if _numero_player == 1:
			counter += 1
		elif _numero_player == 2:
			counter_J2 += 1
		elif _numero_player == 3:
			counter_J3 += 1
		elif _numero_player == 4:
			counter_J4 += 1

	iniciar_desafio = 1
	# logica si el contador pasa el record anterior,
	if (_counter + 1) > _Mejor_cliks20 and desafio == true and max_segundos == 20: # superar el record del desafio 20
		XDIC[_simplificador(_tipo)][_c] = _counter+1

	elif (_counter + 1) > _Mejor_cliks1 and desafio == true and max_segundos == 1: # superar el record del desafio 1
		XDIC[_simplificador(_tipo)][_a] = _counter+1

	elif (_counter + 1) > _Mejor_cliks10 and desafio == true and max_segundos == 10: # superar el record del desafio 10
		XDIC[_simplificador(_tipo)][_b] = _counter+1

	elif (_counter + 1) > _Mejor_cliks30 and desafio == true and max_segundos == 30: # superar el record del desafio 30
		XDIC[_simplificador(_tipo)][_d] = _counter+1

	elif (_counter + 1) > _Mejor_cliks60 and desafio == true and max_segundos == 60: # superar el record del desafio 60
		XDIC[_simplificador(_tipo)][_e] = _counter+1

	elif (_counter + 1) > _Mejor_cliksx and desafio == true and max_segundos == Segundos_personalizados: # superar el record del desafio personalizado
		XDIC[_simplificador(_tipo)][_f] = _counter+1
	if max_segundos == Segundos_personalizados:
		if _numero_player == 1:
			XDIC[_simplificador(_tipo)]["SEG"] = Segundos_personalizados
		elif _numero_player == 2:
			XDIC[_simplificador(_tipo)]["SEG2"] = Segundos_personalizados
		elif _numero_player == 3:
			XDIC[_simplificador(_tipo)]["SEG3"] = Segundos_personalizados
		else:
			XDIC[_simplificador(_tipo)]["SEG4"] = Segundos_personalizados
	guardar()

func _simplificador(_a):
	var _g = ""
	match _a:
		0:
			_g = "SOLO"
		1:
			_g = "1C1"
		2:
			_g = "2C2"
		3:
			_g = "3P"
		4:
			_g = "4P"
		_:
			_g = "SOLO"
	return _g


#sirve para las opciones,saber cual exactamente esta activada.
func _asignadores(_a,_b):#tipo de dato, nodo/boton/etc
	if _a == 0:
		A_modo.global_position = _b.global_position
	elif _a == 1:
		A_modo_estadistica.global_position = _b.global_position
	elif _a == 2:
		A_tiempos.global_position = _b.global_position


## BOTONES ABAJO:
## LOGICA DE BOTONES ABAJO:
# la func primero da una condicional
# si desafio es falso o opciones es 0 (si esta el jugador en el menu de seleccion)
# si se cumple alguna de las 2 se hace un match con (_a) 
# siendo (_a) la variable que representa el tipo de lugar que se quiere ir
# y dependiendo de la variable (_a) se llamara _logica_botones_abajo(...)
func _botones_abajo(_a):
	if desafio == false or opciones == 0:
		match _a:
			0: ## HOGAR
				if opciones == 0: ## principal
					_logica_botones_abajo(false,false,false,false,0)
				elif opciones == 1: ## hogar del click
					_logica_botones_abajo(false,false,false,false,1)
			1: ## ESTADISTICAS
				_logica_botones_abajo(false,true,false,false)
			2: ## SKINS
				_logica_botones_abajo(false,false,true,false)
			3: ## OPCIONES
				_logica_botones_abajo(false,false,false,true)
			4: ## DECLARACION DEL DEV
				_logica_botones_abajo(true,false,false,false)
# aqui en esta func dependiendo de las convinaciones se podra guiar al jugador al
# "menu" que el quiere por medio de condicionales que estan controladas en su mayoria 
# por booleanos; cuando se cumple un condicional x_nodo se colocara en la posicion X en el eje x
func _logica_botones_abajo(
_deker, ## DECLARACION DEL DEV ( bool )
_a, ## ESTADISTICAS ( bool )
_b, ## SKINS ( bool )
_c, ## OPCIONES ( bool )
_d = 3 ## DONDE ESTA HOGAR ( int )
):
# declaracion
	if _deker:
		Dekeiser_sentimental.emit(1)
		n_dekeiser_declaracion.position.x = 360
	else:
		Dekeiser_NO_sentimental.emit(0)
		n_dekeiser_declaracion.position.x = 1080
# estadisticas
	if _a:
		n_estadisticas_opciones_down.position.x = 360
	else:
		n_estadisticas_opciones_down.position.x = 1080.0
# skins
	if _b:
		n_skins_opciones_down.position.x = 360
	else:
		n_skins_opciones_down.position.x = 1080.0
# opciones
	if _c:
		n_opciones_opciones_down.position.x = 360
	else:
		n_opciones_opciones_down.position.x = 1080.0
# hogar
	if _d == 0:
		n_todo.position.x = 720
		v_home = 0
	elif _d == 1:
		n_todo.position.x = 0
		v_home = 0
	else:
		n_todo.position.x = -1000
		v_home = 1
## SIRVE PARA GUIAR AL USUARIO A DISTINTOS MENUS.
func _on_home_pressed() -> void: ## MODO CASA/HOGAR ( NORMAL )
	a_click.play()
	_botones_abajo(0)
	hme1.texture_normal = th_texture1 # define una textura si se cumple la func
func _on_estadist_pressed() -> void: ## MODO DE ESTADISTICAS
	_estadisticas_mostrar_texto_parasiempre()
	SD_estadisticas = SD_esta
	_para_estadisticas_opciones(0,1)
func _on_skins_pressed() -> void: ## MODO DE SKINS
	a_click.play()
	_botones_abajo(2)
func _on_opcion_pressed() -> void: ## MODO DE OPCIONES
	a_click.play()
	_botones_abajo(3)


##-------------------------LOGICA MENU DE OPCIONES-------------------------------:
## COMO DEBE DE INICIAR EL/LOS CHECKBUTTON/S
# esta funcion simplemente es para indicarle al CheckButton si debe estar
# activo o desactivado dependiendo de los datos del (_a)(diccionario) y (_b)(key)
func CheckButtons(
_a, ## DICCIONARIO 
_b, ## NOMBRE KEY ( string )
_c ## VARIABLE ( int )
):
	var _e # bool 
	if _a.has(_b):
		if _c == 1:
			_e = true
		else:
			_e = false
	return _e
## LOGICA GENERAL DE LOS CHECKBUTTONS
# estas tres func son Checkbuttons, mas exactamente son señales que se llaman
# cuando se activa o desactiva y ordenan a la variable a ser igual al resultado 
# de la func _opciones_pantalla_efectos() (que simplemente es una func que intercambia de 0 a 1 y biceversa)
# y lo guarda
func _on_PLUS1_toggled(_toggled_on: bool) -> void:
	XDIC["+1"] = _opciones_pantalla_efectos(XDIC["+1"],_toggled_on)
	guardar()
func _on_confeti_toggled(_toggled_on: bool) -> void:
	XDIC["confeti"] = _opciones_pantalla_efectos(XDIC["confeti"],_toggled_on)
	guardar()
func _on_vibracion_toggled(_toggled_on: bool) -> void:
	XDIC["vibracion"] = _opciones_pantalla_efectos(XDIC["vibracion"],_toggled_on)
	guardar()

## LOGICA DE INTERCAMBIO DEL ( _a ) SEGUN EL BOOL ( _b )
# si (_b) es true (_a) es 1, de lo contrario (_a) es 0
# y retorna (_a)
func _opciones_pantalla_efectos(_a,_b: bool):
	a_click.play()
	if _b:
		_a = 1
	else:
		_a = 0
	return _a

## LOGICA PARA CENTRAR PANELES
# (creado porque al cambiar de idioma una sola posicion x 
# beneficiaria a una configuracion en vez de todas)
# (_panel) es la variable que tenga el nodo del panel.
# el ciclo de esta func es que primero se recetea la escala del panel
# despues se define los 2 vertices del panel solamente en el eje x
# despues se busca el centro de el panel gracias a los 2 vertices y la formula
# (_izq - _der) / 2.0 
# y se retorna centro 
## SIRVE PARA DEFINIR LA NUEVA POSICION X DEL PANEL
func _centrar_panel(
_panel, ## ( ruta )
_a = 0 ## NO TOCAR
):
	if _a == 0:
		_panel.reset_size()
	var _izq = _panel.position.x
	var _der = _panel.position.x + _panel.size.x
	var _centro_x = (_izq - _der) / 2.0
	return _centro_x
#orden para centrar los paneles cada vez que se llame la func
func _paneles_para_centrar():
	P_efectos.position.x = _centrar_panel(P_efectos)
	P_idioma.position.x = _centrar_panel(P_idioma)

## LOGICA DE BARRAS DE VOLUMENvariable
# en resumen estas 2 func actualizan los datos del valumen y lo guardan
# modifica el canal de audio "effect"
func _on_effect_volume(value: float) -> void:
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("effect"),linear_to_db(value))
	XDIC["volumen_effect"] = barra_vol_effect.value # almacena el valor de la barra
	guardar()
# modifica el canal de audio "music"
func _on_music_volume(value: float) -> void:
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("music"),linear_to_db(value))
	XDIC["volumen_music"] = barra_vol_music.value # almacena el valor de la barra
	guardar()

## MUESTRA LA INFORMACION QUE DA EL DESARROLLADOR
func _on_dekeiser_declaracion_pressed() -> void:
	a_click.play()
	_botones_abajo(4)


##--------------------------LOGICA GUARDAR_CARGAR--------------------------------:
## SISTEMA DE GUARDADO DE ARCHIVOS
func guardar():
	var archivo = FileAccess.open(RUTA_GUARDADO,FileAccess.WRITE)
	archivo.store_var(XDIC)
	archivo.close()

## SISTEMA DE SIMPLIFICADO DECIMAL
# (redondeo) 
# para mayor comodidad 
# util para guardar cifras muy grandes a pequeñas
##(de 1.99999999... guarda 1.99)
func r(
_a, ## ( float )
_c = 0 ## NO TOCAR 
):
	_c = round(_a * 100.0 /100.0)
	return _c

## SISTEMA DE CARGA DE DATOS
func cargar():
	if FileAccess.file_exists(RUTA_GUARDADO):
		var archivo = FileAccess.open(RUTA_GUARDADO, FileAccess.READ)
		var XDIC_G = archivo.get_var()
		for clave in XDIC_G:
			if XDIC.has(clave):
				if XDIC[clave] is Dictionary and XDIC_G[clave] is Dictionary:
					for sub_clave in XDIC_G[clave]:
						XDIC[clave][sub_clave] = XDIC_G[clave][sub_clave]
				else:
					XDIC[clave] = XDIC_G[clave]
		if XDIC.has("volumen_effect"):
			barra_vol_effect.value = XDIC["volumen_effect"]
		if XDIC.has("volumen_music"):
			barra_vol_music.value = XDIC["volumen_music"]
		CB_plus1.button_pressed = CheckButtons(XDIC,"+1",XDIC["+1"])
		CB_confeti.button_pressed = CheckButtons(XDIC,"confeti",XDIC["confeti"])
		CB_vibracion.button_pressed = CheckButtons(XDIC,"vibracion",XDIC["vibracion"])
		archivo.close()

## SISTEMA DE VER EL GUARDADO ENCRIPTADO
func ver_guardado_texto():
	if FileAccess.file_exists(RUTA_GUARDADO):
		var archivo = FileAccess.open(RUTA_GUARDADO, FileAccess.READ)
		var datos = archivo.get_var()
		archivo.close()
		
		var texto = JSON.stringify(datos, "\t")
		
		var archivo_texto = FileAccess.open("user://Clickspeed_debug.txt", FileAccess.WRITE)
		archivo_texto.store_string(texto)
		archivo_texto.close()


##--------------------------LOGICA TEXTO-----------------------------------------:
## ES EL ENCARGADO DE ACTUALIZAR LOS TEXTOS QUE SI O SI SE VEAN EN EL JUEGO
## COMO CONTADORES Y EL TIEMPO 
# ( mediante nodo.text = texto.text )
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

## ES EL QUE DA LOS DATOS EXACTOS A CADA TEXTO IMPORTANTE
# primero se define (_inde = 0) (es la variable que dice cuanto se va a reducir)
# despues se define como es el texto original 
# (los unicos que cambian son los richs asi que se definen solo ellos)
# el el condicional if se busca cuanto valdra _inde dependiendo el valor XDIC["Idioma"]
# (XDIC["Idioma"] = idioma)
# se actualizan los datos
func _texto_tamaño_fuente():
	var _inde = 0
	_datos_texto(0,t_estadistica_global,57,_inde,fuente_1,1)
	_datos_texto(0,t_estadistica_local,69,_inde,fuente_1,1)
	if XDIC["Idioma"] > 4 and XDIC["Idioma"] <7:
		_inde = menos_6
	else:
		_inde = 0
	#rich
	_datos_texto(0,t_estadistica_global,57,_inde)
	_datos_texto(0,t_estadistica_local,69,_inde)
	#label
	_datos_texto(1,t_proximamente,104)
	_datos_texto(1,t_proximamente_negro,104)
	_datos_texto(1,SD_negro,35)
	_datos_texto(1,A_label,35)

## LOGICA DE CAMBIO DE TAMAÑO DEL TEXTO O CAMBIO DE TIPOGRAFIA
# (tecnicamente es como una class)
func _datos_texto(
_0, ## _0 TIPO DE TEXTO ( LABEL( 1 ) O RICHS( 0 ) ) ( int )
_a, ## _a NODO DEL TEXTO ( ruta )
_b = 0, ## _b TAMAÑO DE TEXTO ( ORIGINAL ) ( int o float )
_c = 0, ## _c REDUCCION DE TAMAÑO DE TEXTO ( int o float )
_d = fuente_1, ## TIPOGRAFIA ( ruta )
_e = 0 ## ¿SE UTILIZARA EL TAMAÑO ORIGINAL? ( 1 = SI ) ( int)
): 
	if _e == 0:
		if _0 == 1:
			_a.add_theme_font_override("font",_d)
			_a.add_theme_font_size_override("font_size",
			_a.get_theme_font_size("font_size")-_c
			)
		else:
			_a.add_theme_font_override("normal_font",_d)
			_a.add_theme_font_size_override("normal_font_size",
			_a.get_theme_font_size("normal_font_size")-_c
			)
	elif _e == 1:
		if _0 == 1:
			_a.add_theme_font_size_override("font_size",_b)
		else:
			_a.add_theme_font_size_override("normal_font_size",_b)

## ES EL ENCARGADO LOGICO DE DECIR EN QUE POSICION Y QUE DEBE DE DECIR EL TEXTO 
## QUE APARECERA.
# Define donde el texto aparecera dependiendo de (_a) (_b) y lo coloca visible
# en los condicinales se elige que tipo de mensaje se va a mostrar:
# (solo el mensaje o el mensaje + SD_ACTIVADO)
# (t(...) es para saltos de lineas correctos)
# y por ultimo detiene la animacion (si esque se estaba reproduciendo)
# y inicia la animacion
func _textos_explicativos(
_a, ## _a COORDENADA X ( float )
_b, ## _b COORDENADA Y ( float )
_c, ## _c TEXTO ( string )
_d = 0 ## _d TIPO DE IMPRESION ( int )
):
	A_texto_desaparecedor.position = Vector2(_a,_b)
	A_texto.visible = true
	if _d != 1:
		A_label.text = t(_c)
	else:
		A_label.text = t(_c)+t(SD_ACTIVADO)
	A_animation_valor_valido.stop()
	A_animation_valor_valido.play("UNICA")

## AL PRESIONAR SALE UNA COPIA DE +1
# primero se define la variable texto con la direccion del +1 (click_text)
# se invoca el texto, despues se crea (__a) y saca un numero ramdom (entre 0-16)
# se define (_tex), (_size) se crea y se saca un numero de (1.8-2.3)
# depues desde el match (__a) segun el numero sacado(__a) _tex es igual a alguna ruta
# (estas rutas son puntos de generacion que estan en los botones)
# despues se define la posicion global de (texto) que sea igual a la 
# posicion global de (_tex)(ruta objeto generativo)
# despues siguene unas ecuaciones para poner el (texto) en el eje correcto(x,y) (limitarlo)
# y dependiendo el (tipo_de_modo_jugadores) la escala del texto varia
# y al final se ejecuta la animacion (la de subir y desvanecer) 
# (llama en realidad una func dentro de (click_text) llamada (animar())
func _texto_presionar_plus_one(_a): # _a es la ruta del boton(donde suele salir el +1)
	if XDIC["+1"] == 1:
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


##--------------------------TRADUCCIONES----------------------------------------:
## HACE POSIBLE LOS SALTOS DE LINEA ( \n )
# hace una modificacion para poder hacer un salto de linea
# ya que en los strings puede q los interprete \\n envez de \n
func t(id: String) -> String:
	return tr(id).replace("\\n", "\n")

## ENVIAN EL VALOR QUE REPRESENTA EL IDIOMA
# como se pueda ver a continuacion
func _on_esp_pressed() -> void: ## ESP
	_traductor(0)
func _on_ing_pressed() -> void: ## ING
	_traductor(1)
func _on_por_pressed() -> void: ## POR
	_traductor(2)
func _on_fra_pressed() -> void: ## FRA
	_traductor(3)
func _on_ita_pressed() -> void: ## ITA
	_traductor(4)
func _on_rus_pressed() -> void: ## RUS
	_traductor(5)
func _on_jpn_pressed() -> void: ## JPN
	_traductor(6)
func _on_kor_pressed() -> void: ## KOR
	_traductor(7)

## ESTA FUNC SIRVE PARA DEFINIR EL IDIOMA ( POR MEDIO DE UNA VARIABLE LOCAL DE FUNC )
# poner el sonido (click) guarda el idioma(XDIC["Idioma"]) y
# actualiza la traducion global y llama a centrar paneles
func _traductor(_a):
	a_click.play()
	XDIC["Idioma"] = _a
	guardar()
	TranslationServer.set_locale(_columnas())
	_paneles_para_centrar()

## DEFINE CON EXACTITUD QUE IDIOMA ES EL COLOCADO SEGUN LA VARIABLE ( XDIC["Idioma"] )
# y con la variable (_As) guarda el STR del idioma(gracias a match XDIC["Idioma"]) para retornarlo
func _columnas():
	var _As
	_texto_tamaño_fuente() # ajusta el tamaño segun el idioma(XDIC["Idioma"])
	match XDIC["Idioma"]:
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


##----------------------------ANUNCIOS------------------------------------------:
# llama a_click para el sonido(click) 
# y envia(emite) una señal a (main.gd) para poner un anuncio interticial
func _on_interticial_prueba_pressed() -> void:
	a_click.play()
	Interticial_apoyo_dekeiser.emit()
	XDIC["AYuda_Deker"] += 1
	print(XDIC["AYuda_Deker"])
	guardar()
	if XDIC["AYuda_Deker"] >= 3:
		logros(0,1)

##-----------------------------LOGROS-------------------------------------------:
# llama a la variable global PlayGameServices para mostras x logro
# por medio de la func L(..)
# (_a) es el numero de el n¿logro conseguido que se ve en PlayGameServices.gd
func L(_a):
	PlayGameServices.logros(_a)

func logros(
_counter, # para logros 0,1,2
_a = 0 # si el logro es de de clicks(0) si es otro...(segure escribiendo
):
	if _a == 0: # PRIMER CLICK
		L(0)
		if _counter >99: # 100 CLICKS
			L(1)
		if _counter >199 and max_segundos == 20: # 200 CLICKS EN 20 S
			L(2)
	if _a == 1:
		if _counter == 0: # AYUDA DEKER
			L(4)

func _grafica_logica_matematica(_x):
	var _tamaño_panel = 1
	var _n = _x["M_Clicks"]
	var _seg = _x["M_Seg"]

	var _Y = {}
	var _X = {}

	var _vector2 = {
		"coordenadas": {},
		"segmentoX": {},
		"segmentoY": {}
	}

	var _trayectoria = 0

	for i in 2:
		var _N
		if _trayectoria == 0:
			_N = _n
		else:
			_N = _seg
		# Cantidad de segmentos usando log2
		var _S = log(_N) / log(2.0)
		var _S_int = 0
		if (_S - int(_S)) < 0.6:
			_S_int = max(int(_S), 1)
		else:
			_S_int = max(int(_S) + 1, 1)

		for a in range(_S_int + 1):
			var _M = int((a * _N) / _S_int)
			if _trayectoria == 0:
				_Y[a] = _M
			else:
				_X[a] = _M

		if _trayectoria == 0:
			var _ultimo = _Y.values()[-1]
			for e in _Y.keys():
				_Y[e] = float(_Y[e] * _tamaño_panel) / _ultimo
		else:
			var _ultimo = _X.values()[-1]
			for e in _X.keys():
				_X[e] = float(_X[e] * _tamaño_panel) / _ultimo
		_trayectoria = 1

	for u in range(_x["CPS"].size() + 1):
		var X = 0.0
		var Y = 0.0
		if u > 0:
			X = float(
				u * _tamaño_panel
			) / _x["M_Seg"]
			Y = float(
				_x["CPS"][u - 1] * _tamaño_panel
			) / _x["M_Clicks"]
		_vector2["coordenadas"][u] = Vector2(X, Y)

	for u in range(_X.size()):
		_vector2["segmentoX"][u] = _X[u]
	for u in range(_Y.size()):
		_vector2["segmentoY"][u] = _Y[u]
		
	return _vector2


func _crear_segmentos_dinamicos(
	_panel,
	_cantidad_x,
	_cantidad_y
):

	var _eje_x = _panel.get_node("EJE X")
	var _eje_y = _panel.get_node("EJE Y")
	var _plantilla_x = _eje_x.get_node("1")

	for i in range(1, _cantidad_x + 1):
		if not _eje_x.has_node(str(i)):
			var _nuevo = _plantilla_x.duplicate()
			_nuevo.name = str(i)
			_eje_x.add_child(_nuevo)


	var _plantilla_y = _eje_y.get_node("1")
	for i in range(1, _cantidad_y + 1):
		if not _eje_y.has_node(str(i)):
			var _nuevo = _plantilla_y.duplicate()
			_nuevo.name = str(i)
			_eje_y.add_child(_nuevo)


func _actualizar_visibilidad_segmentos(
	_panel,
	_cantidad_x,
	_cantidad_y
):
	var _eje_x = _panel.get_node("EJE X")
	var _eje_y = _panel.get_node("EJE Y")
	for _hijo in _eje_x.get_children():
		if _hijo.name.is_valid_int():
			_hijo.visible = (
				int(_hijo.name) <= _cantidad_x
			)

	for _hijo in _eje_y.get_children():
		if _hijo.name.is_valid_int():
			_hijo.visible = (
				int(_hijo.name) <= _cantidad_y
			)


func _dibujar_grafica(_vector2) -> void:
	var _panel = $"Node2D/Botones_ocultar desafio/Sprite2D"
	var _linea = $"Node2D/Botones_ocultar desafio/Sprite2D/Line2D"
	var _coordenadas = _vector2["coordenadas"]
	var _segmento_x = _vector2["segmentoX"]
	var _segmento_y = _vector2["segmentoY"]

	var _tamaño_panel = _panel.texture.get_size().x
	var _mitad = _tamaño_panel / 2.0



	_crear_segmentos_dinamicos(
		_panel,
		_segmento_x.size(),
		_segmento_y.size()
	)

	_actualizar_visibilidad_segmentos(
		_panel,
		_segmento_x.size(),
		_segmento_y.size()
	)

	_linea.position = Vector2.ZERO
	_linea.scale = Vector2.ONE
	_linea.clear_points()
	_linea.width = 1.4
	_linea.antialiased = true
	_linea.joint_mode = Line2D.LINE_JOINT_ROUND
	_linea.begin_cap_mode = Line2D.LINE_CAP_ROUND
	_linea.end_cap_mode = Line2D.LINE_CAP_ROUND


	for u in _coordenadas:
		var _coordenada = _coordenadas[u]
		var _posicion = Vector2(
			(_coordenada.x * _tamaño_panel)
			- _mitad,
			_mitad
			- (_coordenada.y * _tamaño_panel)
		)
		_linea.add_point(_posicion)


		var _punto = Polygon2D.new()
		var _radio = 5.0
		var _vertices = PackedVector2Array()

		for i in 16:
			var _angulo = (
				TAU * i
			) / 16.0
			_vertices.append(
				Vector2(
					cos(_angulo),
					sin(_angulo)
				) * _radio
			)

		_punto.polygon = _vertices
		_punto.color = Color.RED
		_punto.position = _posicion


		_punto.scale = Vector2(
			1.0 / _panel.scale.x,
			1.0 / _panel.scale.y
		)
		_panel.add_child(_punto)

	var _escala_x = abs(
		_panel.scale.x
	)
	var _escala_y = abs(
		_panel.scale.y
	)
	var _ancho_real = (
		_tamaño_panel * _escala_x
	)
	var _alto_real = (
		_tamaño_panel * _escala_y
	)
	var _mitad_x = (
		_ancho_real / 2.0
	)
	var _mitad_y = (
		_alto_real / 2.0
	)


	for u in range(_segmento_y.size()):
		var _seg_y = _panel.get_node(
			"EJE Y/" + str(u + 1)
		)
		var _valor = float(
			_segmento_y[u]
		)
		var _x = (
			(_valor * _ancho_real)
			- _mitad_x
		)
		_seg_y.position.x = (
			_x / _escala_x
		)

	for u in range(_segmento_x.size()):
		var _seg_x = _panel.get_node(
			"EJE X/" + str(u + 1)
		)
		var _valor = float(
			_segmento_x[u]
		)
		var _y = (
			_mitad_y
			- (_valor * _alto_real)
		)
		_seg_x.position.y = (
			_y / _escala_y
		)
