extends Area2D

const SPEED = 280

var vel_x = 0
var vel_y = 0

func _ready():
	set_process(true)
	pass

func _process(delta):
	
	var motion = Vector2(vel_x, vel_y)*SPEED
	self.position = self.position + motion*delta

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	
func _on_Proyectil_body_entered(body):
	body.queue_free()
	queue_free()
