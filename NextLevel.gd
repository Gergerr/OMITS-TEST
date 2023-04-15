extends Area2D

func _ready():
	pass

# Level 1
func _on_1_NL_body_entered(body: KinematicBody2D):
	if not body is Player1:
		return
	cs1.p1test = true
	print(cs1.p1test)
	print(cs1.p2test)
	if cs1.p1test and cs1.p2test:
		cs1.goto_scene("TempatSoal.tscn")
		get_node("../1_NL").queue_free()
func _on_2_NL_body_entered(body: KinematicBody2D):
	if not body is Player2:
		return
	print(cs1.p1test)
	print(cs1.p2test)		
	cs1.p2test = true
	if cs1.p1test and cs1.p2test:
		cs1.goto_scene("TempatSoal.tscn")
		cs1.p1test = false
		cs1.p2test = false
		get_node("../2_NL").queue_free()


# Level 2
func _on_NextLevel_body_entered(body: KinematicBody2D):
	if body is Player2:
		cs2.p2nl = true
		if cs2.p2nl and cs2.p1nl:
			cs2.goto_scene("TempatSoal3.tscn")		
			cs2.p2nl = false
			cs2.p1nl = false

			get_node("../NextLevel").queue_free()
	elif body is Player1:
		cs2.p1nl = true
		if cs2.p2nl and cs2.p2nl:
			cs2.goto_scene("TempatSoal3.tscn")
			cs2.p2nl = false
			cs2.p1nl = false		
			get_node("../NextLevel").queue_free()
	else:
		return

func _on_NextLevel2_body_entered(body: KinematicBody2D):
	if body is Player2:
		cs2.p2nl = true
		if cs2.p2nl and cs2.p1nl:
			cs2.goto_scene("TempatSoal3.tscn")
			cs2.p2nl = false
			cs2.p1nl = false
			get_node("../NextLevel2").queue_free()
	elif body is Player1:
		cs2.p1nl = true
		if cs2.p2nl and cs2.p2nl:
			cs2.goto_scene("TempatSoal3.tscn")
			cs2.p2nl = false
			cs2.p1nl = false	
			get_node("../NextLevel2").queue_free()	
	else:
		return


func _on_NextLevel2_body_exited(body: KinematicBody2D):
	if body is Player2:
		cs2.p2nl = false
	elif body is Player1:
		cs2.p1nl = false
	else:
		return

func _on_NextLevel_body_exited(body: KinematicBody2D):
	if body is Player2:
		cs2.p2nl = false
	elif body is Player1:
		cs2.p1nl = false
	else:
		return


func _on_1_NL_body_exited(body: KinematicBody2D):
	if body is Player1:
		cs1.p1test = false


func _on_2_NL_body_exited(body: KinematicBody2D):
	if body is Player2:
		cs1.p2test = false


# Level 3
func _on_3_NextLevel_body_entered(body: KinematicBody2D):
	if body is Player2:
		cs3.p2nl = true
		if cs3.p2nl and cs3.p1nl:
			cs3.goto_scene("TempatSoal5.tscn")
			cs3.p2nl = false
			cs3.p1nl = false
			get_node("../3_NextLevel").queue_free()
	elif body is Player1:
		cs3.p1nl = true
		if cs3.p2nl and cs3.p2nl:
			cs3.goto_scene("TempatSoal5.tscn")
			cs3.p2nl = false
			cs3.p1nl = false	
			get_node("../3_NextLevel").queue_free()	
	else:
		return


func _on_3_NextLevel2_body_entered(body: KinematicBody2D):
	if body is Player2:
		cs3.p2nl = true
		if cs3.p2nl and cs3.p1nl:
			cs3.goto_scene("TempatSoal5.tscn")
			cs2.p2nl = false
			cs2.p1nl = false
			get_node("../3_NextLevel2").queue_free()
	elif body is Player1:
		cs3.p1nl = true
		if cs3.p2nl and cs3.p2nl:
			cs3.goto_scene("TempatSoal5.tscn")
			cs3.p2nl = false
			cs3.p1nl = false	
			get_node("../3_NextLevel2").queue_free()
	else:
		return


func _on_3_NextLevel_body_exited(body: KinematicBody2D):
	if body is Player2:
		cs3.p2nl = false
	elif body is Player1:
		cs3.p1nl = false
	else:
		return


func _on_3_NextLevel2_body_exited(body: KinematicBody2D):
	if body is Player2:
		cs3.p2nl = false
	elif body is Player1:
		cs3.p1nl = false
	else:
		return



func _on_4_NextLevel_body_entered(body: KinematicBody2D):
	if body is Player2:
		cs4.p2nl = true
		if cs4.p2nl and cs4.p1nl:
			cs4.goto_scene("TempatSoal7.tscn")
			cs4.p2nl = false
			cs4.p1nl = false
			get_node("../4_NextLevel").queue_free()
	elif body is Player1:
		cs4.p1nl = true
		if cs4.p2nl and cs4.p2nl:
			cs4.goto_scene("TempatSoal7.tscn")
			cs4.p2nl = false
			cs4.p1nl = false
			get_node("../4_NextLevel").queue_free()
	else:
		return



func _on_4_NextLevel_body_exited(body: KinematicBody2D):
	if body is Player2:
		cs4.p2nl = false
	elif body is Player1:
		cs4.p1nl = false
	else:
		return



func _on_4_NextLevel2_body_entered(body: KinematicBody2D):
	if body is Player2:
		cs4.p2nl = true
		if cs4.p2nl and cs4.p1nl:
			cs4.goto_scene("TempatSoal7.tscn")
			cs4.p2nl = false
			cs4.p1nl = false
			get_node("../4_NextLevel2").queue_free()
	elif body is Player1:
		cs4.p1nl = true
		if cs4.p2nl and cs4.p2nl:
			cs4.goto_scene("TempatSoal7.tscn")
			cs4.p2nl = false
			cs4.p1nl = false
			get_node("../4_NextLevel2").queue_free()
	else:
		return



func _on_4_NextLevel2_body_exited(body: KinematicBody2D):
	if body is Player2:
		cs4.p2nl = false
	elif body is Player1:
		cs4.p1nl = false
	else:
		return


func _on_5_NextLevel_body_entered(body: KinematicBody2D):
	if body is Player2:
		cs5.p2nl = true
		if cs5.p2nl and cs5.p1nl:
			cs5.goto_scene("TempatSoal9.tscn")
		
			cs5.p2nl = false
			cs5.p1nl = false
			get_node("../5_NextLevel").queue_free()
	elif body is Player1:
		cs5.p1nl = true
		if cs5.p2nl and cs5.p2nl:
			cs5.goto_scene("TempatSoal9.tscn")
			cs5.p2nl = false
			cs5.p1nl = false
			get_node("../5_NextLevel").queue_free()			
	else:
		return


func _on_5_NextLevel_body_exited(body: KinematicBody2D):
	if body is Player2:
		cs5.p2nl = false
	elif body is Player1:
		cs5.p1nl = false
	else:
		return


func _on_5_NextLevel2_body_entered(body: KinematicBody2D):
	if body is Player2:
		cs5.p2nl = true
		if cs5.p2nl and cs5.p1nl:
			cs5.goto_scene("TempatSoal9.tscn")
			cs5.p2nl = false
			cs5.p1nl = false
			get_node("../5_NextLevel2").queue_free()
	elif body is Player1:
		cs5.p1nl = true
		if cs5.p2nl and cs5.p2nl:
			cs5.goto_scene("TempatSoal9.tscn")
			cs5.p2nl = false
			cs5.p1nl = false
			get_node("../5_NextLevel2").queue_free()
	else:
		return


func _on_5_NextLevel2_body_exited(body: KinematicBody2D):
	if body is Player2:
		cs5.p2nl = false
	elif body is Player1:
		cs5.p1nl = false
	else:
		return
