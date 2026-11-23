extends Node2D

## ESTE SCRIP SE DECIDA A:
## CARGAR Y MOSTRAR EL BANNER Y EL INTERSTICIAL CUANDO SEA REQUERIDO
## EN EL MAIN_CODE, ADEMAS DE TENER LA LOGICA PRINCIPAL DE LA MUSICA
## DE LA ESCENA ANTES MENCIONADA

# variables que son para objetos
var code_main # todo la escena principal
var a_music # objeto principal de musica

# Array con toda la music del juego.
var music = [
# mirandas songs
	preload("res://Assets/Banda_Sonora/music/normalizados/Fatherday.mp3"),
	preload("res://Assets/Banda_Sonora/music/normalizados/Game.mp3"),
	preload("res://Assets/Banda_Sonora/music/normalizados/Purpose Of Living Music.mp3"),
	preload("res://Assets/Banda_Sonora/music/normalizados/-Nostalgia-.mp3"),
	preload("res://Assets/Banda_Sonora/music/normalizados/-Paz-.mp3"),
	preload("res://Assets/Banda_Sonora/music/normalizados/-Run-.mp3"),
	preload("res://Assets/Banda_Sonora/music/normalizados/-Tensión-.mp3"),
	preload("res://Assets/Banda_Sonora/music/normalizados/-El-momento-de-llorar-.mp3"), 
	preload("res://Assets/Banda_Sonora/music/normalizados/-La-búsqueda-.mp3"),

# dekeisers songs
	preload("res://Assets/Banda_Sonora/effects/Loading.mp3")
]

# variable que permite que no se repita musica 2 veces seguidas
var ramdom = -1

# dice que tipo de cancion se toca
var cancion_miranda_o_dekeiser = 0 # 0 miranda, 1 dekeiser

## if the Miranda song is real, and another Miranda song needs to be real
# esta variable sirve para no quitar una cancion de miranda para poner otra cancion de miranda
var itmsiraamsntbr = false ## false significa que no puede cambiar, true significa que si


# func para cargar variable con un onjetivo
func _cargar_objetos():
	a_music = $Music
	code_main = $main_code


func _ready() -> void:
	_cargar_objetos()

# carga los intersticiales
	CargaIntersticiales._carga_intersticiales()

# cuando la musica acabe que se repita
	a_music.finished.connect(_repetir_song)

# se espera 1 segundo para crear el banner con el ID 1
	await get_tree().create_timer(1.0).timeout
	AdMob_Script._crear_banner(AD_CONFIG._ADS(1))

# signals de la escena principal
# cuando se da click al "Ayuda (AD)"
	code_main.Interticial_apoyo_dekeiser.connect(_interstitial)
# para el ciclo de canciones normales ( pasa 0 )
	code_main.Dekeiser_NO_sentimental.connect(_cancion)
# para poner la song de dekeiser ( pasa 1 ) ( se reproduce en los creditos )
	code_main.Dekeiser_sentimental.connect(_cancion)


# func para mostrar el intersticial con el numero de _RAMDOM()
func _interstitial():
	AdMob_Script.mostrar_intersticial(_RAMDOM())


# retorna un ID de intersticial gracias a un numero ramdom de 1-10
func _RAMDOM():
# un numero del 1 - 10
	var numero = randi_range(1, 10)

	if numero <= 7:
		# 70%
		return AD_CONFIG._ADS(2)
	else:
		# 30%
		return AD_CONFIG._ADS(3)


func _poner_otra_cancion() -> void:
# se asigna un valor de 0 - (tamaño del array menos 2)
# ( se coloca el -2 porque un -1 corrige el desfase de 10 a 9 
# (porque se necesita el index y el index empieza por 0 y no 1,asi que se debe de restar 1)
# y el otro -1 quita la cancion de dekeiser, ideal para colocar mas canciones de miranda
# sin cambiar codigo logico
	var nueva = randi_range(0, music.size() - 2)

# como en el principio ramdom = -1 se omite
# esta linea de codigo es para nunca repetir la misma cancion
	while nueva == ramdom:
		nueva = randi_range(0, music.size() -2 )

# ramdom tiene el valor de nueva
	ramdom = nueva

# el objeto de musica sera igual a la ruta del array de music y con index del ramdom
	a_music.stream = music[ramdom]
# se reproduce
	a_music.play()


# se retipe la tipo de song ( dekeiser o miranda )
func _repetir_song():
	itmsiraamsntbr = true
	_cancion(cancion_miranda_o_dekeiser)


func _cancion(
_cancio = 0, # que tipo de cancion ( dekeiser o miranda )
):

# se guarda para saber que tipo de cancion repetir
	cancion_miranda_o_dekeiser = _cancio

	match cancion_miranda_o_dekeiser:
		0:
			# musica miranda
			if itmsiraamsntbr == true:
				itmsiraamsntbr = false
				_poner_otra_cancion()
		1:
			# musica de dekeiser
			itmsiraamsntbr = true
			_cancion_dekeiser()


# se asigna el valor index de la Array para que sea la musica de dekeiser y se reproduce
func _cancion_dekeiser() -> void:
	a_music.stream = music[9]
	a_music.play()
