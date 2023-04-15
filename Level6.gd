extends Node2D


func _ready():
	pass
func _physics_process(delta):
	if Input.is_action_just_pressed("skipLevel6"):
		cs6.goto_scene("TempatSoal6.tscn")
