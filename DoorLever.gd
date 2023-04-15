extends StaticBody2D
onready var animation_player: AnimationPlayer = get_node("AnimationPlayer")

func _ready():
	pass


func _on_Platform3_active():
	queue_free()



func _on_Platform3_not_active():
	animation_player.play_backwards("play")



func _on_Platform_active():
	animation_player.play("play")
	$CollisionShape2D.set_deferred('disabled', true)


func _on_Platform_not_active():
	animation_player.play_backwards("play")
	$CollisionShape2D.set_deferred('disabled', false)


func _on_Platform1_active():
	animation_player.play("play")
	$CollisionShape2D.set_deferred('disabled', true)


func _on_Platform1_not_active():
	animation_player.play_backwards("play")
	$CollisionShape2D.set_deferred('disabled', false)
