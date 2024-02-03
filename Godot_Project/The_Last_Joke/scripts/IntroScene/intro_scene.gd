extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var jugador = Player.new("", 54)
	print (jugador.lifeCount) 
	jugador.lifeCount = 9
	print (jugador.lifeCount)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventKey and event.is_pressed() and not event.is_echo():
		var typed_event = event as InputEventKey
		var key_typed = PackedByteArray([typed_event.unicode]).get_string_from_utf8()
		if key_typed.to_upper() == 'F':
			get_tree().change_scene_to_file("res://primer intento.tscn")
