extends Node

func _GAMES_SERVICES(_a):
	var id_logro := ""
	match _a:
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
			print("ERROR: logro inexistente: ", _a)
	return id_logro
