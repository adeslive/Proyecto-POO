extends KinematicBody2D

var motion = get_parent().motion

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _physics_process(delta):
	
	motion = move_and_slide(motion)
	pass
