extends Label

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	$".".text = $"../counter".text
	if $"../counter".visible == false:
		$".".visible = false
	else:
		$".".visible = true
