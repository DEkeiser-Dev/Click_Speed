extends Node

@onready var sign_in_client = $PlayGamesSignInClient
@onready var achievements_client = $PlayGamesAchievementsClient
@onready var leaderboards_client = $PlayGamesLeaderboardsClient

signal autenticacion_finalizada(autenticado: bool)

var comprobando_sesion = false
var iniciando_sesion = false

func _enter_tree() -> void:
	GodotPlayGameServices.initialize()

func _ready() -> void:
	sign_in_client.user_authenticated.connect(_al_autenticar)

func comprobar_sesion() -> void:
	if comprobando_sesion or iniciando_sesion:
		return
	comprobando_sesion = true
	sign_in_client.is_authenticated()

func _al_autenticar(autenticado: bool) -> void:
	if comprobando_sesion:
		comprobando_sesion = false
		if not autenticado:
			iniciando_sesion = true
			sign_in_client.sign_in()
			return
	elif iniciando_sesion:
		iniciando_sesion = false

	autenticacion_finalizada.emit(autenticado)

func iniciar_sesion() -> void:
	sign_in_client.sign_in()

func logros(_a: int) -> void:
	var id_logro = PGS_CONFIG._GAMES_SERVICES(_a)
	if id_logro != "":
		achievements_client.unlock_achievement(id_logro)

func guardar_puntuacion(_a: int, puntuacion: int) -> void:
	var id_marcador = PGS_CONFIG._MARKERS(_a)
	if id_marcador != "":
		leaderboards_client.submit_score(id_marcador, puntuacion)

func mostrar_marcador(_a: int) -> void:
	var id_marcador = PGS_CONFIG._MARKERS(_a)
	if id_marcador != "":
		leaderboards_client.show_leaderboard(id_marcador)

func mostrar_marcadores() -> void:
	leaderboards_client.show_all_leaderboards()
