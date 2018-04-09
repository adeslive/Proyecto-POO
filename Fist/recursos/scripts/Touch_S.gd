extends Area2D


onready var viewport = get_node("/root/Raiz")
onready var personaje = get_parent().get_parent().get_node("Personaje")


var event = InputEventScreenTouch


func _ready():
	set_process_input(true)
	pass


func _input_event(viewport, event, shape_idx):
	if event.is_action_pressed("lft_btn"):
		print(event.get_position())
		print("Sur") 
		if personaje.dir != -1:
			personaje.look_at(Vector2(0,384))
			personaje.dir = -1
	pass