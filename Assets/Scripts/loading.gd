extends Node2D

func _ready() -> void:
	await get_tree().create_timer(2.5).timeout
	$Banner2/AnimationPlayer.play("animacion")
	await get_tree().create_timer(1.0).timeout
	get_tree().change_scene_to_file("res://Assets/Scenas/main.tscn")
