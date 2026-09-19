extends Control
@export var NUM: String
@export var TIPO: String = "sec"

func _ready() -> void:
	$MarginContainer/datos/num.text = NUM
	$MarginContainer/datos/seg.text = TIPO
