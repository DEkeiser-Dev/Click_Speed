extends Node2D
signal confeti

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	confeti.connect(_confeti)

func _confeti():
	$confeti_1.mi_señal.emit()
	$confeti_2.mi_señal.emit()
