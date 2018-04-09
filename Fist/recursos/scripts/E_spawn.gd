extends Node

const enem = preload("res://recursos/escenas/Enemigo.tscn")

func _ready():
	yield(utils.create_timer(1),"timeout")
	spawn()
	pass

func spawn():
	while true:
		randomize()
		var e_pos = int(rand_range(0,4))
		var enemigo = enem.instance()
		enemigo.e_pos = e_pos
		enemigo.position = get_child(e_pos).get_position()
		get_node("Contenedor").add_child(enemigo)
		yield(utils.create_timer(1),"timeout")
		
	pass