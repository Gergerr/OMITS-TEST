extends StaticBody2D
onready var animation_player: AnimationPlayer = get_node("AnimationPlayer")

func _ready():
	animation_player.play("open_left")
	$CollisionShape2D.set_deferred("disabled", true)

func _on_Platform_active():
	animation_player.play_backwards("open_left")
	$CollisionShape2D.set_deferred("disabled", false)

func _on_Platform_not_active():
	animation_player.play("open_left")
	$CollisionShape2D.set_deferred("disabled", true)


func _on_Platform1_active():
	animation_player.play_backwards("open_left")
	$CollisionShape2D.set_deferred("disabled", false)


func _on_Platform1_not_active():
	animation_player.play("open_left")
	$CollisionShape2D.set_deferred("disabled", true)
