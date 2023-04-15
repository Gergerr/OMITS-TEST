extends Node2D


func _ready():
	pass
func _physics_process(delta):
	if Input.is_action_just_pressed("skipLevel4"):
		cs4.goto_scene("TempatSoal7.tscn")
	elif Input.is_action_just_pressed("reloadScene"):
		get_tree().reload_current_scene()
