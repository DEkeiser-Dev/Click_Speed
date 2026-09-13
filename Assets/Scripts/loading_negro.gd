extends RichTextLabel

const RUTA_GUARDADO = "user://ClickSpeed.deker"

var letras: Array[Label] = []
var tiempo := 0.0
var amplitud := 5.0
var velocidad := 5.0
var separacion := 0.0
var columna := 0

func _ready():
	cargar()
	TranslationServer.set_locale(_columnas())

	var clave: String = str(text)
	var texto: String = str(TranslationServer.translate(clave))

	text = ""

	var fuente := get_theme_font("normal_font")
	var tamano := get_theme_font_size("normal_font_size")

	if fuente == null:
		return

	var x := 0.0

	for i in texto.length():
		var caracter: String = texto.substr(i, 1)

		var letra := Label.new()
		letra.text = caracter

		letra.add_theme_font_override("font", fuente)
		letra.add_theme_font_size_override("font_size", tamano)

		letra.position = Vector2(x, 0)
		add_child(letra)
		letras.append(letra)

		x += fuente.get_string_size(
			caracter,
			HORIZONTAL_ALIGNMENT_LEFT,
			-1,
			tamano
		).x + separacion


func _columnas() -> String:
	match columna:
		0:
			return "ESP"
		1:
			return "ING"
		2:
			return "POR"
		3:
			return "FRA"
		4:
			return "ITA"
		5:
			return "RUS"
		6:
			return "JPN"
		7:
			return "KOR"
		_:
			return "ESP"


func _process(delta):
	tiempo += delta

	for i in letras.size():
		letras[i].position.y = sin(
			tiempo * velocidad + i * 0.5
		) * amplitud


func cargar():
	if not FileAccess.file_exists(RUTA_GUARDADO):
		return

	var archivo := FileAccess.open(RUTA_GUARDADO, FileAccess.READ)

	if archivo == null:
		return

	var datos = archivo.get_var()
	archivo.close()

	if datos is Dictionary:
		columna = int(datos.get("Idioma", 0))

	if columna < 0 or columna > 7:
		columna = 0
