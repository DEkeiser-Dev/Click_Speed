extends Node

@onready var achievements_client = $PlayGamesAchievementsClient
@onready var leaderboards_client = $PlayGamesLeaderboardsClient

func _ready() -> void:
	GodotPlayGameServices.initialize()

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
		#leaderboards_client.load_top_scores(id_marcador)
		leaderboards_client.show_leaderboard(id_marcador)
		#top_scores_loaded(leaderboard_id, leaderboard_scores)

func mostrar_marcadores() -> void:
	leaderboards_client.show_all_leaderboards()
