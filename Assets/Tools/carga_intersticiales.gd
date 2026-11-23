extends Node

## ESTE SCRIPT SE DEDICA A:
## CARGAR TODOS LOS INTERTICIALES DE UNA VEZ
## ADEMAS DE ESPERAR 3 MINUTOS Y VOLVER A LLAMARLOS

# contador
var time := 0.0

# func que el la que otros scripts llaman para cargar todo
func _carga_intersticiales():
	AdMob_Script._cargar_intersticial(AD_CONFIG._ADS(2))
	AdMob_Script._cargar_intersticial(AD_CONFIG._ADS(3))
	AdMob_Script._cargar_intersticial(AD_CONFIG._ADS(4))

# actualizar cada 3 min
func _process(_delta: float) -> void:
	time += _delta
	if time >= 180.0:
		_carga_intersticiales()
		time = 0.0000
