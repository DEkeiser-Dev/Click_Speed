extends Node2D

# variable que dicen como son los anuncios
var _ad_view: AdView
var _interstitial_ad: InterstitialAd
var _interstitial_loader: InterstitialAdLoader

# para iniciar el MobileAds
var _ads_initialized := false
var _interstitial_loading := false
var _interstitial_pendiente := false
var _interstitial_ID_actual := ""

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

	if _interstitial_loading or _interstitial_ad:
		return

	_interstitial_loading = true
	_interstitial_ID_actual = _interstitial_ID

	_interstitial_loader = InterstitialAdLoader.new()
	var ad_request = AdRequest.new()
	var callback = InterstitialAdLoadCallback.new()

	callback.on_ad_loaded = func(ad: InterstitialAd):
		print("Intersticial cargado")
		_interstitial_loading = false
		_interstitial_ad = ad

		if _interstitial_pendiente:
			_interstitial_pendiente = false
			mostrar_intersticial(_interstitial_ID_actual)

	callback.on_ad_failed_to_load = func(error):
		print("Error cargando intersticial: ", error)
		_interstitial_loading = false
		_interstitial_ad = null

	_interstitial_loader.load(_interstitial_ID, ad_request, callback)


## se dedica a mostrar el intersticial y cargarlo
# si esta cargado el anuncio simplemente lo muestra
func mostrar_intersticial(_interstitial_ID) -> void:
	print("Intentando mostrar intersticial")

	if not _ads_initialized:
		print("AdMob todavía no está inicializado")
		return

	if _interstitial_ad:
		var anuncio = _interstitial_ad
		_interstitial_ad = null

		anuncio.show()

		_cargar_intersticial(_interstitial_ID)
	else:
		_interstitial_pendiente = true
		_cargar_intersticial(_interstitial_ID)
		print("El intersticial todavía no está cargado")
