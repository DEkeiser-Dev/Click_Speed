extends Node2D
# señal que dira si se emitira las particulas
signal mi_señal

# variable que se especializa en limitar la emision de particulas
# (mas exactamente dice que a menos que cambie a uno puede emitir)
var yes_or_not = 0

# particulas de confeti por color
var a # maron
var b # rosa
var c # verde
var d # naranja
var e # azul

# desde el inicio se llaman proces_obj y _confeti y se define 
# que cuando mi_señal sea conectada llame a la funcion  
# _on_touch_screen_button_pressed
func _ready() -> void:
	_proces_obj()
	_confeti()
	mi_señal.connect(_on_touch_screen_button_pressed)

# asigna a las variables de las particulas su objeto.
func _proces_obj():
	a = $CPUParticles2D
	b = $CPUParticles2D2
	c = $CPUParticles2D3
	d = $CPUParticles2D4
	e = $CPUParticles2D5

func _confeti():
# ejecuta la animacion global de las particulas
# llama a _logica_particulas(...) por cada particula
	if yes_or_not == 1:
		$"../AnimationPlayer".play("confetiar")
		_logica_particulas(a,21,41)
		_logica_particulas(b,26,46)
		_logica_particulas(c,22,42)
		_logica_particulas(d,16,36)
		_logica_particulas(e,29,49)

# no permitir la emision de las particulas
	elif yes_or_not == 0:
		a.emitting = false
		b.emitting = false
		c.emitting = false
		d.emitting = false
		e.emitting = false

# le dice la particula que se emita una vez
# le dice que produzca n particulas siendo n un numero ramdon entre _min y _max
# y reinicia el ciclo desde el principio
func _logica_particulas(_particula,_min,_max):
	_particula.one_shot = true
	_particula.amount = randi_range(_min,_max)
	_particula.restart()

# cuando se llame esta func (llamese .connet() o signal) se da la orden de alfin permitir 
# la emision de particulas y llama a la func _confeti()
func _on_touch_screen_button_pressed() -> void:
	yes_or_not = 1
	_confeti()
