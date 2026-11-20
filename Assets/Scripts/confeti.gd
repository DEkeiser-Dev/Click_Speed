extends Node2D

## ESTE SCRIPT SE DEDICA A:
## TODA LA LOGICA DE PARTICULAS DEL CONFETI DESDE CUANDO
## DEBE DE INICIAR EL CONFETI Y HAZTA CUANTAS PARTICULAS
## SE DEBEN DE EMITIR, ( ESE SCRIPT SE REPARTE EN 4 CONFETIS )

# señal que dira si se emitira las particulas
signal mi_señal

# variable que da el visto bueno para emitir las particulas
var particulas_emision = 0

# particulas del confeti por color
var maron
var rosa
var verde
var naranja
var azul

# animacion global de las particulas
var animacion_confeti


# se dedica a asignarle a las varibles una ruta 
func _carga_de_objetos():
# colores de las particulas
	maron = $Maron
	rosa = $Rosa
	verde = $Verde
	naranja = $Naranja
	azul = $Azul

# animacion global 
	animacion_confeti = $"../Ani_Confeti_Aparicion"


func _ready() -> void:
	_carga_de_objetos()
	_confeti()

# espera la señal mi_señal para llamar a _particulas_emision
	mi_señal.connect(_particulas_emision)


# encargado de decir si las particulas del confeti inician o no
func _confeti():
# inician
	if particulas_emision == 1:
		# se reproduce la animacion global 
		animacion_confeti.play("iniciar_confeti")

		# parametros que controlan la particula y lo minimo o maximo
		# de particulas
		_logica_particulas(maron,12,23)
		_logica_particulas(rosa,15,25)
		_logica_particulas(verde,13,23)
		_logica_particulas(naranja,10,20)
		_logica_particulas(azul,16,26)

# no emiten ( solo se usa una vez esta parte ( el inicio ) )
	elif particulas_emision == 0:
		maron.emitting = false
		rosa.emitting = false
		verde.emitting = false
		naranja.emitting = false
		azul.emitting = false

# encargado de decir cuantas particulas habra
# ademas decir que inicien de verdad y al final que se reinicie
func _logica_particulas(
_particula, # variable de x particula
_min, # valor minimo de particulas
_max # valor maximo de particulas
):
# se emite una vez la particula
	_particula.one_shot = true

# con el randi_range y las variables se define la cantidad de particulas
	_particula.amount = randi_range(_min,_max)

# se reinicia
	_particula.restart()


# al llamarse se da el visto bueno de comenzar a reproducir las particulas
func _particulas_emision() -> void:
	particulas_emision = 1
	_confeti()
