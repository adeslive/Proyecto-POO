extends Node


var screen_size = OS.get_screen_size()
var window_size = OS.get_window_size()
var rngE = 0
var rngP = 0


onready var viewport = self


func _ready():
	OS.set_window_position(screen_size*0.5 - window_size*0.5)
	pass


func _input(event):
	if(event.is_action_pressed("ui_quit")):
		get_tree().quit()


func _process(delta):
	rngP = rng(rngP, 0, 4)
	rngE = rng(rngE, 0, 15)


func rng(rng,Rmin,Rmax):
	rng += 1
	if rng >= Rmax:
		rng = Rmin
	return rng
