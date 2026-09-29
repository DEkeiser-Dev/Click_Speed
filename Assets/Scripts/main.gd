extends Node2D

var a_music
var ramdom = -1

var uno = preload("res://Assets/Banda_Sonora/music/normalizados/Fatherday.mp3")
var dos = preload("res://Assets/Banda_Sonora/music/normalizados/Game.mp3")
var tres = preload("res://Assets/Banda_Sonora/music/normalizados/Purpose Of Living Music.mp3")
var cuatro = preload("res://Assets/Banda_Sonora/music/normalizados/-Nostalgia-.mp3")
var cinco = preload("res://Assets/Banda_Sonora/music/normalizados/-Paz-.mp3")
var seis = preload("res://Assets/Banda_Sonora/music/normalizados/-Run-.mp3")
var siete = preload("res://Assets/Banda_Sonora/music/normalizados/-Tensión-.mp3")
var ocho = preload("res://Assets/Banda_Sonora/music/normalizados/-El-momento-de-llorar-.mp3")
var nueve = preload("res://Assets/Banda_Sonora/music/normalizados/-La-búsqueda-.mp3")

var dekeiser_sentimental = preload("res://Assets/Banda_Sonora/effects/Loading.mp3")
var cambio = 0
var no_cambies = 0

signal banner
signal interticial
signal inter_iniciar

func _ready() -> void:
	inter_iniciar.emit()
	a_music = $AudioStreamPlayer
	a_music.finished.connect(_repetir_song)
	await get_tree().create_timer(1.0).timeout
	banner.emit()
	$Boton.Interticial_apoyo_dekeiser.connect(_interticial)
	$Boton.Dekeiser_NO_sentimental.connect(_cancion)
	$Boton.Dekeiser_sentimental.connect(_cancion)

func _interticial():
	interticial.emit()

func _poner_otra_cancion() -> void:
	var nueva = randi_range(0, 8)

	while nueva == ramdom:
		nueva = randi_range(0, 8)

	ramdom = nueva

	match ramdom:
		0:
			a_music.stream = uno
		1:
			a_music.stream = dos
		2:
			a_music.stream = tres
		3:
			a_music.stream = cuatro
		4:
			a_music.stream = cinco
		5:
			a_music.stream = seis
		6:
			a_music.stream = siete
		7:
			a_music.stream = ocho
		8:
			a_music.stream = nueve

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
