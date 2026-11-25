extends Node2D

# variable que dicen como son los anuncios
var _ad_view: AdView
var _interstitial_ads := {}
var _interstitial_loaders := {}
var _interstitial_loading := {}
var _interstitial_pendiente := false
var _interstitial_ID_actual := ""

# para iniciar el MobileAds
var _ads_initialized := false

var _initialization_listener := OnInitializationCompleteListener.new()

# inicia MobileAds
func _enter_tree() -> void:
	_initialization_listener.on_initialization_complete = _on_ads_initialized
	MobileAds.initialize(_initialization_listener)

# verificar si MobileAds se inicio correctamente
# y si por si las moscas se activa forzamente
func _on_ads_initialized(_status) -> void:
	print("AdMob TERMINÓ de inicializar")
	_ads_initialized = true
	CargaIntersticiales._carga_intersticiales()


## logica de banner
# prepara,crea y carga el anuncio tipo banner (en este caso el banner se ubica en arriba
# y sus medidas se adaptan)
func _crear_banner(_banner_ID):
	if not _ads_initialized:
		print("AdMob todavía no está inicializado")
		return

	if _ad_view:
		return

	var ad_size = AdSize.new(320,50)
	_ad_view = AdView.new(
		_banner_ID,
		ad_size,
		AdPosition.TOP
	)
	var ad_request = AdRequest.new()
	_ad_view.load_ad(ad_request)


## simplemente la logica de intersticial:
# estas lineas simplemente cargan el intersticial
func _cargar_intersticial(_interstitial_ID) -> void:
	if not _ads_initialized:
		print("AdMob todavía no está inicializado")
		return

	if _interstitial_loading.get(_interstitial_ID, false) or _interstitial_ads.has(_interstitial_ID):
		return

	_interstitial_loading[_interstitial_ID] = true

	var loader = InterstitialAdLoader.new()
	_interstitial_loaders[_interstitial_ID] = loader

	var ad_request = AdRequest.new()
	var callback = InterstitialAdLoadCallback.new()

	callback.on_ad_loaded = func(ad: InterstitialAd):
		#print("Intersticial cargado " + str(_interstitial_ID))
		_interstitial_loading[_interstitial_ID] = false
		_interstitial_ads[_interstitial_ID] = ad
		_interstitial_loaders.erase(_interstitial_ID)

		if _interstitial_pendiente and _interstitial_ID_actual == _interstitial_ID:
			_interstitial_pendiente = false
			mostrar_intersticial(_interstitial_ID_actual)

	callback.on_ad_failed_to_load = func(error):
		print("Error cargando intersticial: ", error)
		_interstitial_loading[_interstitial_ID] = false
		_interstitial_loaders.erase(_interstitial_ID)

	loader.load(_interstitial_ID, ad_request, callback)


## se dedica a mostrar el intersticial y cargarlo
# si esta cargado el anuncio simplemente lo muestra
func mostrar_intersticial(_interstitial_ID) -> void:
	print("Intentando mostrar intersticial")

	if not _ads_initialized:
		print("AdMob todavía no está inicializado")
		return

	if _interstitial_ads.has(_interstitial_ID):
		var anuncio = _interstitial_ads[_interstitial_ID]
		_interstitial_ads.erase(_interstitial_ID)

		anuncio.show()

		_cargar_intersticial(_interstitial_ID)
	else:
		print("El intersticial todavía no está cargado")
		_interstitial_pendiente = true
		_interstitial_ID_actual = _interstitial_ID

		if not _interstitial_loading.get(_interstitial_ID, false):
			_cargar_intersticial(_interstitial_ID)
