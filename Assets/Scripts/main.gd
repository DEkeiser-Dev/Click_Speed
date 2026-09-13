extends Node2D

var a_music
var ramdom = -1

var uno = preload("res://Assets/Banda_Sonora/music/normalizados/Fatherday.mp3")
var dos = preload("res://Assets/Banda_Sonora/music/normalizados/Game.mp3")
var tres = preload("res://Assets/Banda_Sonora/music/normalizados/Purpose Of Living Music.mp3")
var cuatro = preload("res://Assets/Banda_Sonora/music/normalizados/Mirandacraft -Nostalgia-.mp3")
var cinco = preload("res://Assets/Banda_Sonora/music/normalizados/Mirandacraft -Paz-.mp3")
var seis = preload("res://Assets/Banda_Sonora/music/normalizados/Mirandacraft -Run-.mp3")
var siete = preload("res://Assets/Banda_Sonora/music/normalizados/Mirandacraft -Tensión-.mp3")
var ocho = preload("res://Assets/Banda_Sonora/music/normalizados/Mirandacraft-El-momento-de-llorar-.mp3")
var nueve = preload("res://Assets/Banda_Sonora/music/normalizados/Mirandacraft-La-búsqueda-.mp3")

var _ad_view: AdView


func _ready() -> void:
	a_music = $AudioStreamPlayer
	a_music.finished.connect(_poner_otra_cancion)
	MobileAds.initialize()
	await get_tree().create_timer(1.0).timeout
	_crear_banner()


func _crear_banner():
	var ad_size = AdSize.new(320, 50)
	_ad_view = AdView.new(
		"ca-app-pub-5066256392694449/4801407632",
		ad_size,
		AdPosition.TOP
	)
	var ad_request = AdRequest.new()
	_ad_view.load_ad(ad_request)

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
