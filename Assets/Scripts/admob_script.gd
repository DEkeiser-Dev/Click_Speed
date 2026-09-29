extends Node2D

var _ad_view: AdView
var _interstitial_ad: InterstitialAd
var _interstitial_loader: InterstitialAdLoader

var ban = "ca-app-pub-5066256392694449/4801407632"
var loading = "ca-app-pub-5066256392694449/7066302845"
var inter_medio = "ca-app-pub-5066256392694449/2693262811"
var inter_alto = "ca-app-pub-5066256392694449/1004776624"

var _ads_initialized := false
var _initialization_listener := OnInitializationCompleteListener.new()

func _ready() -> void:
	_initialization_listener.on_initialization_complete = _on_ads_initialized
	MobileAds.initialize(_initialization_listener)
	lista_de_busqueda()

func _on_ads_initialized(_status) -> void:
	print("AdMob TERMINÓ de inicializar")
	_ads_initialized = true

func lista_de_busqueda():
	buscar_señal(get_tree().root, "banner")
	buscar_señal(get_tree().root, "banner_load")
	buscar_señal(get_tree().root, "inter_iniciar")
	buscar_señal(get_tree().root, "interticial")


func _señal_encontrada(nombre_señal: String):
	print("¡Encontré la señal: ", nombre_señal, "!")
	if nombre_señal == "banner":
		_crear_banner(ban)
	elif nombre_señal == "banner_load":
		_crear_banner(loading)
	elif nombre_señal == "interticial":
		mostrar_intersticial()
	elif nombre_señal == "inter_iniciar":
		_cargar_intersticial()

func buscar_señal(nodo: Node, nombre: String):
	if nodo.has_signal(nombre):
		nodo.connect(
			nombre,
			Callable(self, "_señal_encontrada").bind(nombre)
		)
	for hijo in nodo.get_children():
		buscar_señal(hijo, nombre)


func _crear_banner(_banner_ID):
	var ad_size = AdSize.new(320, 50)
	_ad_view = AdView.new(
		_banner_ID,
		ad_size,
		AdPosition.TOP
	)
	var ad_request = AdRequest.new()
	_ad_view.load_ad(ad_request)


func _cargar_intersticial() -> void:
	var ad_unit_id = _random_intersticial()
	_interstitial_loader = InterstitialAdLoader.new()
	var ad_request = AdRequest.new()
	var callback = InterstitialAdLoadCallback.new()
	callback.on_ad_loaded = func(ad: InterstitialAd):
		print("Intersticial cargado")
		_interstitial_ad = ad
	callback.on_ad_failed_to_load = func(error):
		print("Error cargando intersticial: ", error)
	_interstitial_loader.load(
		ad_unit_id,
		ad_request,
		callback
	)
func _random_intersticial() -> String:
	var numero = randi_range(1, 10)
	if numero <= 7:
		# 70%
		return inter_medio
	else:
		# 30%
		return inter_alto
func mostrar_intersticial() -> void:
	print("Intentando mostrar intersticial")
	if _interstitial_ad:
		_interstitial_ad.show()
		# Preparamos el siguiente
		_interstitial_ad = null
		_cargar_intersticial()
	else:
		print("El intersticial todavía no está cargado")
