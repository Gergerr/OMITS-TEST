extends Node2D


func _ready():
	pass

func _physics_process(delta):
	if Input.is_action_just_pressed("skipLevel1"):
		cs1.goto_scene("TempatSoal.tscn")
	elif Input.is_action_just_pressed("reloadScene"):
		get_tree().reload_current_scene()


