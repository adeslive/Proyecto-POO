extends Node2D

var dir = 0

onready var PROYECTIL = preload("res://recursos/escenas/Proyectil.tscn")


func _ready():
	set_process_input(true)
	pass


func _process(delta):
	var proyectil = PROYECTIL.instance()
	if Input.is_action_just_pressed("lft_btn"):
		
		
		if dir == 1:
			proyectil.vel_y = -1
			proyectil.position = self.position*dir + Vector2(0,-50)
			
		elif dir == 2:
			proyectil.vel_x = 1
			proyectil.position = self.position + Vector2(50,0)
			
		elif dir == -1:
			proyectil.vel_y = 1
			proyectil.position = self.position + Vector2(0,50)
			
		elif dir == -2:
			proyectil.vel_x = -1
			proyectil.position = self.position + Vector2(-50,0)
		get_parent().add_child(proyectil)
	pass



