extends KinematicBody2D
class_name MoveablePlatformObsidian

export var gravity = 250
var vel = Vector2.ZERO

func _physics_process(delta):
	vel.y+=gravity
	vel = move_and_slide(vel)
	vel = Vector2.ZERO
	
func slide(vector):
	vel.x = vector.x
