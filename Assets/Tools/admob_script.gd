extends Node2D

# variable que dicen como son los anuncios
var _ad_view: AdView
var _interstitial_ad: InterstitialAd
var _interstitial_loader: InterstitialAdLoader

# para iniciar el ModileAds
var _ads_initialized := false
var _initialization_listener := OnInitializationCompleteListener.new()

# inicia MobileAds
func _ready() -> void:
	_initialization_listener.on_initialization_complete = _on_ads_initialized
	MobileAds.initialize(_initialization_listener)

# verificar si MobileAds se inicio correctamente 
# y si por si las moscas se activa forzamente
func _on_ads_initialized(_status) -> void:
	print("AdMob TERMINÓ de inicializar")
	_ads_initialized = true


## logica de banner
# prepara,crea y carga el anuncio tipo banner (en este caso el banner se ubica en arriba
# y sus medidas se adaptan) 
func _crear_banner(_banner_ID):
	#var _x = DisplayServer.window_get_size().x
	#var ad_size = AdSize.new(_x,(_x * 0.15625)) # 50/320
	var ad_size = AdSize.new(0,0)
	_ad_view = AdView.new(
		_banner_ID,
		ad_size,
		AdPosition.TOP
	)
	var ad_request = AdRequest.new()
	_ad_view.load_ad(ad_request)

## simplemente la logica de intersticial:
# estas lineas simplemente cargar el intersticial
func _cargar_intersticial(_interstitial_ID) -> void:
	_interstitial_loader = InterstitialAdLoader.new()
	var ad_request = AdRequest.new()
	var callback = InterstitialAdLoadCallback.new()
	callback.on_ad_loaded = func(ad: InterstitialAd):
		print("Intersticial cargado")
		_interstitial_ad = ad
	callback.on_ad_failed_to_load = func(error):
		print("Error cargando intersticial: ", error)
	_interstitial_loader.load(
		_interstitial_ID,
		ad_request,
		callback
	)

## se dedica a mostrar el intersticial y cargarlo
# si esta cargado el anuncio simplemente imprime que no esta aun listo
func mostrar_intersticial(_intersticial_ID) -> void:
	print("Intentando mostrar intersticial")
	if _interstitial_ad:
		_interstitial_ad.show()
		# Preparamos el siguiente
		_interstitial_ad = null
		_cargar_intersticial(_intersticial_ID)
	else:
		print("El intersticial todavía no está cargado")
