extends Node2D

## ESTE SCRIPT SE DEDICA A:
## CUANDO SE INICIA LA APP SE DIRA CUANDO SE HACEN LAS COSAS
## ( await get_tree().create_timer() )
## ( SONIDO, CARGA DE ADMOB(BANNER) Y PLAYGAMESERVICES Y IDA A LA SCENA MAIN )

func _ready() -> void:
# iniciar PlayGameServices (Seleccion de cuenta o Bienvenida de usuario)
# if OS.get_name() == "Android":
# PlayGameServices.comprobar_sesion()

# esperar 0.2 segundos para reproducir "click" (literalmente es un sonido de click)
	await get_tree().create_timer(0.2).timeout
	$Click_Sonido.play()

# esperar 0.05 segundos para reproducir la Musica de espera
	await get_tree().create_timer(0.05).timeout
	$Music_Sonido.play()

# esperar 1 segundo para iniciar/crear un banner gracias a admob
	await get_tree().create_timer(1.0).timeout
	AdMob_Script._crear_banner(AD_CONFIG._ADS(0))

# esperar 5.5 segundos para iniciar la animacion de desaparecer
	await get_tree().create_timer(5.5).timeout
	$"Morado(702fff)/Anim_Desaparecer".play("Desaparecer")

# esperar 1 segundo para ir a la siguiente escena ( la princial )
	await get_tree().create_timer(1).timeout
	get_tree().change_scene_to_file("res://Assets/Scenas/main.tscn")
