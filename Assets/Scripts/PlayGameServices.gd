extends Node2D

signal google_play_ready

var google_play


func _ready():
	if Engine.has_singleton("GodotPlayGamesServices"):
		print("Google Play Games Services encontrado")

		google_play = Engine.get_singleton("GodotPlayGamesServices")
		google_play.initialize()

		google_play_ready.emit()

	else:
		print("Google Play Games Services NO encontrado")
