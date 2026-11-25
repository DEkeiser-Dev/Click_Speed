extends Node

## ESTE SCRIPT SE DEDICA A:
## COLOCAR EN UN SOLO LUGAR TODO LOS ID PARA LLAMARLOS EN 
## CUALQUIER LUGAR ( RETURN )
## COMO DE LOS LOGROS Y DE LOS MARCADORES

# lista de logros de PlayGames
func _GAMES_SERVICES(_a) -> String:
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
			id_logro = ""
			print("ERROR: logro inexistente: ", _a)
	return id_logro


# lista de marcadores de PlayGames ( tops )
func _MARKERS(_a) -> String:
	var id_marcador := ""
	match _a:
		0: # total click
			id_marcador = "CgkI8ryZof4ZEAIQCw"

		1: # click 1
			id_marcador = "CgkI8ryZof4ZEAIQBw"

		10: # click 10
			id_marcador = "CgkI8ryZof4ZEAIQBg"

		20: # click 20
			id_marcador = "CgkI8ryZof4ZEAIQCA"

		30: # click 30
			id_marcador = "CgkI8ryZof4ZEAIQCQ"

		60: # click 60
			id_marcador = "CgkI8ryZof4ZEAIQCg"

		_:
			id_marcador = ""
			print("ERROR: marcador inexistente: ", _a)
	return id_marcador
