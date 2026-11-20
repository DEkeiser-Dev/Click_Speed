extends Node2D

var code_main
var a_music
var ramdom = -1

var music = {
	"uno" : preload("res://Assets/Banda_Sonora/music/normalizados/Fatherday.mp3"),
	"dos" : preload("res://Assets/Banda_Sonora/music/normalizados/Game.mp3"),
	"tres" : preload("res://Assets/Banda_Sonora/music/normalizados/Purpose Of Living Music.mp3"),
	"cuatro" : preload("res://Assets/Banda_Sonora/music/normalizados/-Nostalgia-.mp3"),
	"cinco" : preload("res://Assets/Banda_Sonora/music/normalizados/-Paz-.mp3"),
	"seis" : preload("res://Assets/Banda_Sonora/music/normalizados/-Run-.mp3"),
	"siete" : preload("res://Assets/Banda_Sonora/music/normalizados/-Tensión-.mp3"),
	"ocho" : preload("res://Assets/Banda_Sonora/music/normalizados/-El-momento-de-llorar-.mp3"),
	"nueve" : preload("res://Assets/Banda_Sonora/music/normalizados/-La-búsqueda-.mp3")
}

var dekeiser_sentimental = preload("res://Assets/Banda_Sonora/effects/Loading.mp3")
var cambio = 0
var no_cambies = 0

func _cargar_objetos():
	a_music = $Music
	code_main = $main_code

func _ready() -> void:
	_cargar_objetos()
	AdMob_Script._cargar_intersticial(_RAMDOM())
	a_music.finished.connect(_repetir_song)
	await get_tree().create_timer(1.0).timeout
	AdMob_Script._crear_banner(AD_CONFIG._ADS(1))
	code_main.Interticial_apoyo_dekeiser.connect(_interstitial)
	code_main.Dekeiser_NO_sentimental.connect(_cancion)
	code_main.Dekeiser_sentimental.connect(_cancion)


func _interstitial():
	AdMob_Script.mostrar_intersticial(_RAMDOM())

func _RAMDOM():
	var numero = randi_range(1, 10)
	if numero <= 7:
		# 70%
		return AD_CONFIG._ADS(2)
	else:
		# 30%
		return AD_CONFIG._ADS(3)


func _poner_otra_cancion() -> void:
	var nueva = randi_range(0, 8)

	while nueva == ramdom:
		nueva = randi_range(0, 8)

	ramdom = nueva

	match ramdom:
		0:
			a_music.stream = music["uno"]
		1:
			a_music.stream = music["dos"]
		2:
			a_music.stream = music["tres"]
		3:
			a_music.stream = music["cuatro"]
		4:
			a_music.stream = music["cinco"]
		5:
			a_music.stream = music["seis"]
		6:
			a_music.stream = music["siete"]
		7:
			a_music.stream = music["ocho"]
		8:
			a_music.stream = music["nueve"]

	a_music.play()

func _repetir_song():
	no_cambies = 0
	_cancion(cambio)

func _cancion(_cancio = 0,_u = 0):
	if _u == 0:
		cambio = _cancio
	if cambio == 1:
		a_music.stop()
		await get_tree().create_timer(0.2).timeout
		_cancion_dekeiser()
		no_cambies = 0
	elif cambio == 0 and no_cambies == 0:
		no_cambies = 1
		_poner_otra_cancion()

func _cancion_dekeiser() -> void:
	a_music.stream = dekeiser_sentimental
	a_music.play()
