extends Area2D

onready var animated_sprite : AnimatedSprite = $AnimatedSprite

signal active
signal not_active

func _ready() -> void:
	connect("body_entered", self, "_on_active")
	connect("body_exited", self, "_on_notactive")

func _on_active(body: KinematicBody2D) -> void:
	if (not body is Player1 or not body is Player2):
		return
	
	animated_sprite.play("active")
	emit_signal("active")

func _on_notactive(body: KinematicBody2D) -> void:
	if (not body is Player1 or not body is Player2):
		return
	
	animated_sprite.play("not_active")
	emit_signal("not_active")


func _on_Platform_A_body_entered(body: KinematicBody2D):
	if body is Player1:
		animated_sprite.play("active")
		emit_signal("active")	
	elif body is Player2:
		animated_sprite.play("active")
		emit_signal("active")	
	else:
		return

func _on_Platform_A_body_exited(body: KinematicBody2D):
	if body is Player1:
		animated_sprite.play("not_active")
		emit_signal("not_active")	
	elif body is Player2:
		animated_sprite.play("not_active")
		emit_signal("not_active")	
	else:
		return



func _on_PP_B_body_entered(body: KinematicBody2D):
	if body is Player1:
		animated_sprite.play("active")
		emit_signal("active")	
	elif body is Player2:
		animated_sprite.play("active")
		emit_signal("active")	
	else:
		return	



func _on_PP_B_body_exited(body: KinematicBody2D):
	if body is Player1:
		animated_sprite.play("not_active")
		emit_signal("not_active")	
	elif body is Player2:
		animated_sprite.play("not_active")
		emit_signal("not_active")	
	else:
		return

func _on_Platform_body_entered(body):
	if body is Player1:
		animated_sprite.play("active")
		emit_signal("active")	
	elif body is Player2:
		animated_sprite.play("active")
		emit_signal("active")	
	else:
		return
func _on_Platform_body_exited(body):
	if body is Player1:
		animated_sprite.play("not_active")
		emit_signal("not_active")	
	elif body is Player2:
		animated_sprite.play("not_active")
		emit_signal("not_active")	
	else:
		return

func _on_PlatformB_2_body_entered(body):
	if body is Player1:
		animated_sprite.play("active")
		emit_signal("active")
		GlobalVariables.level2_b_2 = true
	elif body is Player2:
		animated_sprite.play("active")
		emit_signal("active")
		GlobalVariables.level2_b_2 = true
	else:
		return

func _on_PlatformB_2_body_exited(body):
	if body is Player1:
		animated_sprite.play("not_active")
		emit_signal("not_active")
		GlobalVariables.level2_b_2 = false
	elif body is Player2:
		animated_sprite.play("not_active")
		emit_signal("not_active")
		GlobalVariables.level2_b_2 = false
	else:
		return



func _on_PlatformB_Lv4_2_body_entered(body):
	if body is Player1:
		animated_sprite.play("active")
		emit_signal("active")
		GlobalVariables.level4_b_2 = true
	elif body is Player2:
		animated_sprite.play("active")
		emit_signal("active")
		GlobalVariables.level4_b_2 = true
	else:
		return


func _on_PlatformB_Lv4_2_body_exited(body):
	if body is Player1:
		animated_sprite.play("not_active")
		emit_signal("not_active")
		GlobalVariables.level4_b_2 = false
	elif body is Player2:
		animated_sprite.play("not_active")
		emit_signal("not_active")
		GlobalVariables.level4_b_2 = false
	else:
		return


func _on_Platform2_body_entered(body):
	if body is Player1:
		animated_sprite.play("active")
		emit_signal("active")	
	elif body is Player2:
		animated_sprite.play("active")
		emit_signal("active")	
	else:
		return
func _on_Platform2_body_exited(body):
	if body is Player1:
		animated_sprite.play("not_active")
		emit_signal("not_active")	
	elif body is Player2:
		animated_sprite.play("not_active")
		emit_signal("not_active")	
	else:
		return
