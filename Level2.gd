extends Node2D


func _ready():
	pass

func _physics_process(delta):
	if Input.is_action_just_pressed("skipLevel2"):
		cs2.goto_scene("TempatSoal3.tscn")
	elif Input.is_action_just_pressed("reloadScene"):
		get_tree().reload_current_scene()
