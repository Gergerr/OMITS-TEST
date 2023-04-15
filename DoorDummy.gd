extends StaticBody2D
# Double Gate-AND system Level 2 GATE B
var level2_b_1 = null
var level2_b_2 = null

onready var animation_player: AnimationPlayer = get_node("AnimationPlayer")
func _ready():
	pass

func _on_Platform_active():
	animation_player.play("open")
	$CollisionShape2D.set_deferred('disabled', true)

func _on_Platform_not_active():
	animation_player.play_backwards("open")
	$CollisionShape2D.set_deferred("disabled", false)

func _on_Platform_A_active():
	animation_player.play("open")
	$CollisionShape2D.set_deferred('disabled', true)

func _on_Platform_A_not_active():
	animation_player.play_backwards("open")	
	$CollisionShape2D.set_deferred('disabled', false)



func _on_PP_B_active():
	animation_player.play("open")
	$CollisionShape2D.set_deferred('disabled', true)


func _on_PP_B_not_active():
	animation_player.play_backwards("open")	
	$CollisionShape2D.set_deferred('disabled', false)


func _on_Platform1_active():
	animation_player.play("open")
	$CollisionShape2D.set_deferred('disabled', true)


func _on_Platform1_not_active():
	animation_player.play_backwards("open")	
	$CollisionShape2D.set_deferred('disabled', false)


func _on_PlatformB_1_active():
	GlobalVariables.level2_b_1 = true
	if GlobalVariables.level2_b_1 and GlobalVariables.level2_b_2:
		animation_player.play("open")
		$CollisionShape2D.set_deferred('disabled', true)
		
func _on_PlatformB_1_not_active():
	GlobalVariables.level2_b_1 = false
	if not(GlobalVariables.level2_b_1 and GlobalVariables.level2_b_2):
		animation_player.play_backwards("open")	
		$CollisionShape2D.set_deferred('disabled', false)

func _on_PlatformB_2_active():
	GlobalVariables.level2_b_2 = true
	if GlobalVariables.level2_b_1 and GlobalVariables.level2_b_2:
		animation_player.play("open")
		$CollisionShape2D.set_deferred('disabled', true)
		

func _on_PlatformB_2_not_active():
	GlobalVariables.level2_b_2 = false
	if not(GlobalVariables.level2_b_1 and GlobalVariables.level2_b_2):
		animation_player.play_backwards("open")	
		$CollisionShape2D.set_deferred('disabled', false)	
	


func _on_Platform2_active():
	animation_player.play("open")
	$CollisionShape2D.set_deferred('disabled', true)


func _on_PlatformGajelas_active():
	animation_player.play_backwards("open")
	$CollisionShape2D.set_deferred('disabled', false)

func _on_PlatformGajelas_not_active():
	animation_player.play("open")
	$CollisionShape2D.set_deferred('disabled', true)


func _on_PlatformB_Lv4_1_active():
	GlobalVariables.level4_b_1 = true
	if GlobalVariables.level4_b_1 and GlobalVariables.level4_b_2:
		animation_player.play("open")
		$CollisionShape2D.set_deferred('disabled', true)

func _on_PlatformB_Lv4_1_not_active():
	GlobalVariables.level4_b_1 = false
	if not(GlobalVariables.level4_b_1 and GlobalVariables.level4_b_2):
		animation_player.play_backwards("open")	
		$CollisionShape2D.set_deferred('disabled', false)	


func _on_PlatformB_Lv4_2_active():
	GlobalVariables.level4_b_2 = true
	if GlobalVariables.level4_b_1 and GlobalVariables.level4_b_2:
		animation_player.play("open")
		$CollisionShape2D.set_deferred('disabled', true)


func _on_PlatformB_Lv4_2_not_active():
	GlobalVariables.level4_b_2 = false
	if not(GlobalVariables.level4_b_1 and GlobalVariables.level4_b_2):
		animation_player.play_backwards("open")	
		$CollisionShape2D.set_deferred('disabled', false)	


func _on_Platform2_not_active():
	animation_player.play_backwards("open")
	$CollisionShape2D.set_deferred('disabled', false)
