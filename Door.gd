extends StaticBody2D

export(int) var link_code: int = 0

var is_open: bool = false

onready var collision_shape: CollisionShape2D = get_node("CollisionShape2D")
onready var animation_player: AnimationPlayer = get_node("AnimationPlayer")

func _ready() -> void:
	collision_shape.disabled = false 
	animation_player.play("Idle")
	
func _change_state() -> void:
	is_open = not is_open
	if is_open:
		animation_player.play("Open")
	else:
		animation_player.play_backwards("Open")


func _on_AnimationPlayer_animation_finished(anim_name: String) -> void:
	if not is_open and anim_name == 'Open':
		animation_player.play("Idle")
#func _on_Platform_active():

#func _on_Platform_not_active():

func _on_Platform_body_entered(body: PhysicsBody2D):
	var aname = ""
	is_open = not is_open
	if is_open:
		aname = "Open"
		animation_player.play("Open")
	else:
		aname = ""
		animation_player.play_backwards("Open")	
	if not is_open and aname == "Open":
		animation_player.play("Idle")


func _on_Platform_active():
	animation_player.play("Open")
	animation_player.stop()
