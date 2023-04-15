extends Area2D

onready var animated_sprite : AnimatedSprite = get_node("AnimatedSprite")

signal active
signal not_active

func _ready() -> void:
	connect("body_entered", self, "_on_active")
	connect("body_exited", self, "_on_notactive")

func _on_active(body: PhysicsBody2D) -> void:
	if (not body is Block1 or not body is Block2):
		return
	animated_sprite.play("active")
	emit_signal("active")

func _on_notactive(body: PhysicsBody2D) -> void:
	if (not body is Block1 or not body is Block2):
		return
	elif not body is Block2:
		return
	animated_sprite.play("not_active")
	emit_signal("not_active")


func _on_Platform_body_entered(body):
	if body is Block1:
		animated_sprite.play("active")
		emit_signal("active")
	elif body is Block2:
		animated_sprite.play("active")
		emit_signal("active")
	elif body is Block3:
		animated_sprite.play("active")
		emit_signal("active")		
	else:
		return
	

func _on_Platform_body_exited(body):
	if body is Block1:
		animated_sprite.play("not_active")
		emit_signal("not_active")
	elif body is Block2:
		animated_sprite.play("not_active")
		emit_signal("not_active")
	elif body is Block2:
		animated_sprite.play("not_active")
		emit_signal("not_active")		
	else:
		return


func _on_Platform1_body_entered(body):
	if body is Block1:
		animated_sprite.play("active")
		emit_signal("active")
	elif body is Block2:
		animated_sprite.play("active")
		emit_signal("active")
	elif body is Block3:
		animated_sprite.play("active")
		emit_signal("active")		
	else:
		return
	

func _on_Platform1_body_exited(body):
	if body is Block1:
		animated_sprite.play("not_active")
		emit_signal("not_active")
	elif body is Block2:
		animated_sprite.play("not_active")
		emit_signal("not_active")
	elif body is Block3:
		animated_sprite.play("not_active")
		emit_signal("not_active")		
	else:
		return
		
func _on_PlatformB_1_body_entered(body):
	if body is Block1:
		animated_sprite.play("active")
		emit_signal("active")
		GlobalVariables.level2_b_1 = true
	elif body is Block2:
		animated_sprite.play("active")
		emit_signal("active")
		GlobalVariables.level2_b_1 = true		
	elif body is Block3:
		animated_sprite.play("active")
		emit_signal("active")	
		GlobalVariables.level2_b_1 = true	
	else:
		return


func _on_PlatformB_1_body_exited(body):
	if body is Block1:
		animated_sprite.play("not_active")
		emit_signal("not_active")
		GlobalVariables.level2_b_1 = false
	elif body is Block2:
		animated_sprite.play("not_active")
		emit_signal("not_active")
		GlobalVariables.level2_b_1 = false
	elif body is Block3:
		animated_sprite.play("not_active")
		emit_signal("not_active")	
		GlobalVariables.level2_b_1 = false
	else:
		return


# BENTAR TEST DOANG

func _on_PlatformGajelas_body_entered(body):
	if body is Block1:
		animated_sprite.play("active")
		emit_signal("active")
	else:
		return

func _on_PlatformGajelas_body_exited(body):
	if body is Block1:
		animated_sprite.play("not_active")
		emit_signal("not_active")
	else:
		return


func _on_PlatformB_Lv4_1_body_entered(body):
	if body is Block1:
		animated_sprite.play("active")
		emit_signal("active")
		GlobalVariables.level4_b_1 = true
	elif body is Block2:
		animated_sprite.play("active")
		emit_signal("active")
		GlobalVariables.level4_b_1 = true
	elif body is Block3:
		animated_sprite.play("active")
		emit_signal("active")	
		GlobalVariables.level4_b_1 = true
	else:
		return


func _on_PlatformB_Lv4_1_body_exited(body):
	if body is Block1:
		animated_sprite.play("not_active")
		emit_signal("not_active")
		GlobalVariables.level4_b_1 = false
	elif body is Block2:
		animated_sprite.play("not_active")
		emit_signal("not_active")
		GlobalVariables.level4_b_1 = false
	elif body is Block3:
		animated_sprite.play("not_active")
		emit_signal("not_active")	
		GlobalVariables.level4_b_1 = false
	else:
		return
