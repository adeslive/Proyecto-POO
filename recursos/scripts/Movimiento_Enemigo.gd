extends KinematicBody2D

onready var e_pos = get_parent().e_pos

func _physics_process(delta):
	var motion = Vector2()
	
	if e_pos == 0:
		motion.y = 100
	elif e_pos == 1:
		motion.y = -100
	elif e_pos == 2:
		motion.x = -100
	else:
		motion.x = 100
	
	if is_on_wall():
		self.queue_free()
		
	motion = move_and_slide(motion)
	
	pass