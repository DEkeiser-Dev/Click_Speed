extends Node2D

signal banner_load

func _ready() -> void:
	#PlayGameServices.iniciar_sesion()
	$AudioStreamPlayer.play()
	await get_tree().create_timer(1.0).timeout
	banner_load.emit()
	await get_tree().create_timer(5.5).timeout
	$Banner2/AnimationPlayer.play("animacion")
	await get_tree().create_timer(1.0).timeout
	get_tree().change_scene_to_file("res://Assets/Scenas/main.tscn")
