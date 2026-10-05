extends Node

@onready var achievements_client = $PlayGamesAchievementsClient

var autenticado := false


func _ready() -> void:
	#print("Inicializando Google Play Games...")

	GodotPlayGameServices.initialize()

	await get_tree().create_timer(1.0).timeout

	# Google Play ya está funcionando en el dispositivo
	autenticado = true

	#print("Google Play Games listo")
	#print("autenticado = ", autenticado)


func logros(a: int) -> void:
	#print("========== LOGRO ==========")
	#print("ID solicitado: ", a)

	var id_logro := ""

	match a:
		0: # primer click
			id_logro = "CgkI8ryZof4ZEAIQAQ"

		1: # 100 clicks
			id_logro = "CgkI8ryZof4ZEAIQAg"

		2: # 200 clicks en 20s
			id_logro = "CgkI8ryZof4ZEAIQAw"

		3: # maestro +12 CPS
			id_logro = "CgkI8ryZof4ZEAIQBA"

		4: # Ayuda a Dekeiser (ver 3 anuncios) 
			id_logro = "CgkI8ryZof4ZEAIQBQ"

		_:
			print("ERROR: logro inexistente: ", a)
			return

	#print("Desbloqueando: ", id_logro)

	achievements_client.unlock_achievement(id_logro)

	#print("Logro enviado a Google Play Games")
	#print("===========================")
