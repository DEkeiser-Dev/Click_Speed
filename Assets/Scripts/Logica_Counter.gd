extends Label

## ESTE SCRIPT SE ENCARGA DE:
## ACTUALIZAR EL CONTADOR DEL BOTON ( TANTO DEL CONTORNO NEGRO COMO
## DEL BLANCO ) APARTE DECLARA QUE LA VISIBILIDAD DEL CONTADOR BLANCO
## DEPENDE DE COMO ESTA EL NEGRO EN VISIBILIDAD

# variables de contador 
# ( contorno negro y su contorno blanco )
var counter
var counter_negro

# define a cada varible al iniciar el script
func _ready() -> void:
	counter = $"."
	counter_negro = $"../Counter_Negro"

# actualización de número de contador
func _process(_delta: float) -> void:
# siempre tendran el mismo valor string
	counter.text = counter_negro.text

# si el counter negro desaparece el blanco tmbn
# de si counter aparece el blanco tmbn
	if counter_negro.visible == false:
		counter.visible = false
	else:
		counter.visible = true
