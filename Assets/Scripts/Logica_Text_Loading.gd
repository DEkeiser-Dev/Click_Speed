extends RichTextLabel

## ESTE SCRIPT SE DECIA A:
## CARGA EL IDIOMA QUE SE HAYA SELECCIONADO ( O POR SU DEFECTO ESPAÑOL )
## TRADUCE EL TEXTO DEL RICH ( GRACIAS A QUE ES EL ID DEL CSV DE LAS TRADUCCIONES )
## HACER EL MOVIMIENTO DE ONDA EN ESTE RICH POR MEDIO DE VALORES

# ruta del archivo de guardado
const RUTA_GUARDADO = "user://ClickSpeed.deker"

# es un Array que solo guarda Label y comienza vacio
var letras: Array[Label] = []

# valores importantes para la onda
var tiempo := 0.0
var amplitud := 5.0
var velocidad := 5.0

# idioma
var columna := 0

func _ready():
	cargar()

	# traduce el ID al idioma que cargo cargar()
	TranslationServer.set_locale(_columnas())

# guarda en strings los textos del rich (ID) y luego traduce(ID) y luego lo limpia
	var clave: String = str(text)
	var texto: String = str(TranslationServer.translate(clave))
	text = ""

# obtiene el tema de la fuente y ademas el tamaño
# lo tendra del nodo que tenga este script obviamente
	var fuente := get_theme_font("normal_font")
	var tamano := get_theme_font_size("normal_font_size")

# si la fuente no es valida termina la func
	if fuente == null:
		return

# se define una varibale x con 0.0 y que godot mire que tipo de dato es
# es el eje x
	var x := 0.0

## length ES LONGITUD
	for i in texto.length():
		# se guarda en string la substring del indice i y solo uno
		# o sea el i significa donde empieza y el 1 cuantos datos obtendra la variable
		var caracter: String = texto.substr(i, 1)

		# crea un nodo Label y apunta a su direccion (como en C con los *)
		var letra := Label.new()

		# se da la informacion a ese Label creado
		# ( que contiene (texto), su fuente y su tamaño, se da si posicion local 
		# y le dice que ahora es hijo del nodo de este script )
		letra.text = caracter
		letra.add_theme_font_override("font", fuente)
		letra.add_theme_font_size_override("font_size", tamano)
		letra.position = Vector2(x, 0)
		add_child(letra)

		# se añade este nodo al Array de Letras
		letras.append(letra)

		# x se suma a lo que le diga la fuente de cuanto mide( con respecto a sus varibles dadas) 
		# y x solo tomara de esa consulta lo del eje x.
		x += fuente.get_string_size(
			caracter, # caracter seleccionado
			HORIZONTAL_ALIGNMENT_LEFT, # le dice que con respecto a la alineacion H izquierda
			-1, # no al limite del maximo del ancho que se tomara
			tamano # tamaño de la fuente
		).x

# despues de haber cargado los datos ( idioma ) se compara el numero y retorna
# el nombre del idioma para poder hacer una traduccion correcta 
# ( por medio de la columna del csv)
# ( columna es el valor idioma ) 
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

## ANIMACION / ( ACTUALIZACION ) DE LA ONDA
func _process(delta):
	# aumenta el tiempo
	tiempo += delta

	# hace la onda por medio de la formula:
	# y_i(t) = A * sin( w * t + i * 0.5 )
	# para que sea una onda necesita un valor que se cambie ( tiempo (t) )
	# ademas un valor que cambie la rapidez con la que avanza la onda
	# para que cada letra se mueva distinta a cada una se usa i * 0.5 (i0.5)
	# y por ultimo la amplitud representa los pixeles maximos que puede ir la onda
	# (de arriba o hacia abajo) ya que utiliza sin(...) q crea numeros de -1 a 1
	# y la amplutud crea la comversion.
	# y como esta en un for y dentro de la func _process en cada frame se actualizara 
	# la posicion de las letras y como es perpetuo se crea la animacion.
	for i in letras.size():
		letras[i].position.y = sin(
			tiempo * velocidad + i * 0.5
		) * amplitud


## SE ENCARGA DE CARGA EL IDIOMA
func cargar():
# si no exite el archivo de guardado la funcion termina.
	if not FileAccess.file_exists(RUTA_GUARDADO):
		return

# si sigue es porque exite
# entonces se hace una variable que abra el archivo de guardado y lo lee y lo guarda
## Y ABRE EL ARCHIVO ( FileAccess.open(...) )
	var archivo := FileAccess.open(RUTA_GUARDADO, FileAccess.READ)
# si el archivo no se abrio correctamente la func termina 
	if archivo == null:
		return

# almacena todo lo de archivo en datos.
	var datos = archivo.get_var()
## SE CIERRA EL ARCHIVO ( .close() )
	archivo.close()

	if datos is Dictionary:
		# columna es igual al limite del valor entero de lo obtenido de la varible
		# datos.get y busca la key "Idioma", si no existe sera igual a 0, y si el valor
		# 0 <= x <= 7
		columna = clamp( int(datos.get("Idioma", 0)), 0, 7 )
