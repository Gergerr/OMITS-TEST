extends Node2D
onready var anim_player = get_node("AnimationPlayer")

func _ready():
	anim_player.play("PingPong")
