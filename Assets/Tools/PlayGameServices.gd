extends Node

@onready var achievements_client = $PlayGamesAchievementsClient

func _ready() -> void:
	GodotPlayGameServices.initialize()

func logros(_a: int) -> void:
	var id_logro = PGS_CONFIG._GAMES_SERVICES(_a)
	achievements_client.unlock_achievement(id_logro)
