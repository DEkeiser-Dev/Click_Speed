extends Node2D

# señal para llamar al confeti
signal confeti

# si el confeti es llamado ( cuando el usuario quiera gracias al connect())
# llamara la funcion _confeti
func _ready() -> void:
	confeti.connect(_confeti)

# les enviara la señal a los dos confetis de emitir sus particulas
# (son 2 confetis (derecha e izquierda))
func _confeti():
	$confeti_1.mi_señal.emit()
	$confeti_2.mi_señal.emit()
