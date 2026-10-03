extends Node

var google_play

func _on_play_game_services_google_play_ready() -> void:
	google_play = get_parent().google_play
	print("Logic: Google Play está listo")
	google_play.isAuthenticated()


func _on_play_games_sign_in_client_user_authenticated(is_authenticated: bool) -> void:
	print("Resultado autenticación: ", is_authenticated)
	if is_authenticated:
		print("USUARIO AUTENTICADO")
	else:
		print("USUARIO NO AUTENTICADO")
