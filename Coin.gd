extends Area2D

signal coins_collected

func _on_Coin_body_entered(body: KinematicBody2D):
	if body.name == 'Player1' or body.name == 'Player2':
		$AnimationPlayer.play("Bounce")
		emit_signal("coins_collected")
	set_collision_mask_bit(0, false)
		
func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()


func _on_Mult_coins_collected():
	GlobalVariables.multT_1 = 2


func _on_2_Mult_coins_collected():
	GlobalVariables.multT_2 = 2


func _on_3_Mult_coins_collected():
	GlobalVariables.multT_3 = 2


func _on_4_Mult_coins_collected():
	GlobalVariables.multT_4 = 2


func _on_5_Mult_coins_collected():
	GlobalVariables.multT_5 = 2
