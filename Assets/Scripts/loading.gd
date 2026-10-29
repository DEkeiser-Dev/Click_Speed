extends Node2D

func _ready() -> void:
	await get_tree().create_timer(0.2).timeout
	$click.play()
	await get_tree().create_timer(0.05).timeout
	$AudioStreamPlayer.play()
	await get_tree().create_timer(1.0).timeout
	AdMob_Script._crear_banner(AD_CONFIG._ADS(0))
	await get_tree().create_timer(5.5).timeout
	$Banner2/AnimationPlayer.play("animacion")
	await get_tree().create_timer(1).timeout
	get_tree().change_scene_to_file("res://Assets/Scenas/main.tscn")
