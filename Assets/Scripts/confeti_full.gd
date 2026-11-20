extends Node2D

## ESTE SCRIPT ESTA DEDICADO A:
## LLAMAR A TODOS LOS CONFETIS SI A EL LE LLAMAN

# señal para llamar al confeti
signal confeti

# cuando confiti es llamado llama a la func _confeti
func _ready() -> void:
	confeti.connect(_confeti)

# al ser llamado se emite la señal a todos los confetis
func _confeti():
	$confeti_1.mi_señal.emit()
	$confeti_2.mi_señal.emit()
	$confeti_3.mi_señal.emit()
	$confeti_4.mi_señal.emit()
