extends Node2D


func _ready():
	pass

func _physics_process(delta):
	if Input.is_action_just_pressed("skipLevel3"):
		cs3.goto_scene("TempatSoal5.tscn")
	elif Input.is_action_just_pressed("reloadScene"):
		get_tree().reload_current_scene()
