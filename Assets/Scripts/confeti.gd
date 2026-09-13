extends Node2D
signal mi_señal
var yes_or_not = 0
var a
var b
var c
var d
var e

func _ready() -> void:
	a = $CPUParticles2D
	b = $CPUParticles2D2
	c = $CPUParticles2D3
	d = $CPUParticles2D4
	e = $CPUParticles2D5
	_confeti()
	mi_señal.connect(_on_touch_screen_button_pressed)


func _confeti():
	if yes_or_not == 1:
		$"../AnimationPlayer".play("confetiar")
		a.one_shot = true
		a.amount = randi_range(21,41)
		a.restart()
		
		b.one_shot = true
		b.amount = randi_range(26,46)
		b.restart()
		
		c.one_shot = true
		c.amount = randi_range(22,42)
		c.restart()
		
		d.one_shot = true
		d.amount = randi_range(16,36)
		d.restart()
		
		e.one_shot = true
		e.amount = randi_range(29,49)
		e.restart()
	if yes_or_not == 0:
		a.emitting = false
		b.emitting = false
		c.emitting = false
		d.emitting = false
		e.emitting = false


func _on_touch_screen_button_pressed() -> void:
	yes_or_not = 1
	_confeti()
